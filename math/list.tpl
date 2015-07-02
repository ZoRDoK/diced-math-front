<div class="row well" ng-repeat="item in added">
    <a href="#" ng-click="remove(added, $index)" class="pull-right">
        <i class="icon-remove-circle"></i>
    </a>
    <div>[[ item.name ]]</div>
    <div>[[ item.owner ]]</div>
    <div>[[ item.city ]]</div>
    
</div>