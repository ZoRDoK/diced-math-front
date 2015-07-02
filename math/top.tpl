<div class="row" ng-if="successed.length">
    <div class="alert alert-success span12">
        <span ng-repeat="i in successed" class="badge badge-success">[[i]]</span>
    </div>
</div>


<form class="form-inline">
    Вы 
    <select class="input-large" ng-model="author" ng-change="agames = authors[author]">
        <option ng-value="" selected></option>
        <option ng-repeat="(key, item) in authors" value="[[key]]">[[key]]</option>
    </select>
    <input type="email" ng-model="email" placeholder="Email">
    Ваша игра 
    <select class="input-large" ng-model="agame.data" ng-if="authors[author]">
        <option ng-repeat="item in agames" value="[[item]]">[[item]]</option>
    </select>
    
    <button class="btn btn-success" ng-if='agame.data' ng-click="send()">
        Отправить
    </button>
</form>

<div class="row">
    <div class="alert alert-info span12">
        <p>Выбираете в первом списке своё имя, во втором игру. Затем кликаете по играм в том порядке, в котором хотите их.
        Чем выше стоит игра в списке, тем вероятнее, что она вам достанется. На иконки можно навести мышкой, там подсказки,
        комментарии и статус.</p>
        
        <p>Если вы хотите игру человека из другого города, убедитесь, что под ней стоит <i class="icon-arrow-right"></i>,
            даже если он не принимает игры (нет <i class="icon-arrow-left"></i>). Вполне возможно, что ему достанется
            игра человека из его города, а вам — его. Даже если вы сами не отправляете — у вас может её получить ваш соотечественник.
            Но чем больше ограничений у вас и у того, кто владеет желанной игрой, тем меньше шансов на удачный обмен.
        </p>
        
        <p>Вот тут можно посчитать стоимость отправки почтой (напомним, платит тот, кому вы отправляете игру): 
        <a href="http://www.postcalc.ru/postcalc.html" target="_blank">http://www.postcalc.ru/postcalc.html</a>.
        В среднем там 250-300 руб за 1.5 кило (одна большая игра) + почтовая коробка рублей 80-100 стоит.</p>
    </div>
</div>