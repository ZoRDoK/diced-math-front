<div class="row well" ng-repeat="item in added">
    <div class="pull-right">
        <a href="javascript:void(0)" ng-click="remove(added, $index)"><i class="icon-remove-circle"></i></a><br />
        <a href="javascript:void(0)" ng-click="move(added, $index, -1)"><i class="icon-angle-up"></i></a>
        <a href="javascript:void(0)" ng-click="move(added, $index, 1)"><i class="icon-angle-down"></i></a>
    </div>
    <div><strong>[[ item.name ]]</strong></div>
    <div>[[ item.owner ]]</div>
    <div>[[ item.city ]]</div>
</div>