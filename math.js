(function(){
  var app = angular.module('mathtrade', []);
  
  app.config(['$interpolateProvider', function ($interpolateProvider) {
    $interpolateProvider.startSymbol('[[');
    $interpolateProvider.endSymbol(']]');
  }]);
  
  app.controller('math', function ($scope, $http, Mailto) {
    $scope.added = [];
    
    $scope.add = function (name, owner, city) {
        $scope.added.push({
          name: name,
          owner: owner, 
          city: city
        });
    };
    
    $scope.authors = window.authors;
    
    $scope.agame = {name : ''};

    $scope.remove = function(array, index){
      array.splice(index, 1);
    };
    
    $scope.successed = [];
    
    $scope.send = function () {
      var options = {
        subject: 'Math trade for ' + $scope.author + ' ('+ $scope.email +') on ' + $scope.agame.data,
        body:  '<table style="border: 1px solid gray">' + $scope.added.reduce(function (prev, item) { 
          return prev + ['<tr><td>' + item.name, item.owner, item.city + '</td></tr>'].join('</td><td>'); 
        }, '')  + '</table>'
      };
      //var href = Mailto.url('zordok2+math@gmail.com', options);
      //window.open(href, '_blank');
      
      $http.post('/math/send', options)
        .success(function () {
          $scope.added = [];
          $scope.successed.push($scope.agame.data);
          $scope.agame.data = '';
          
        });
    }
  });

  app.factory('Mailto', [function() {
    var api = {};

    /**
     * Returns a URL for a mailto-link
     * @param  {String} recepient    - Recepient email address
     * @param  {Object} opts         - Options to construct the URL
     * @param  {String} opts.cc      - Cc recepient email address (optional)
     * @param  {String} opts.bcc     - Bcc recepient email address (optional)
     * @param  {String} opts.subject - Email subject (optional)
     * @param  {String} opts.body    - Email body (optional). Separate lines with the newline character (\n)
     * @return {String}              - Returns the URL to put into the href-attribute of a mailto link
     */
    api.url = function(recepient, opts) {
      var link = "mailto:";
      link += window.encodeURIComponent(recepient);
      var params = [];
      angular.forEach(opts, function(value, key) {
        params.push(key.toLowerCase() + "=" + window.encodeURIComponent(value));
      });
      if (params.length > 0) {
        link += "?" + params.join("&");
      }
      return link;
    };

    return api;
  }])
})();