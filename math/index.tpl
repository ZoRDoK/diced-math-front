{extends 'main-wide.tpl'}

{block 'content'} 
    <link rel="stylesheet", href="/css/math.css" type="text/css" />
    <script type="text/javascript">
        window.authors = {
                {foreach $authors as $a => $games2}
                {if $games2@iteration > 1}, {/if}
                '{$a}': [
                    {foreach $games2 as $game}
                    {if $game@iteration > 1}, {/if}
                    '{$game|escape:quotes|replace:'"':'&quot;'}'

            {/foreach}
        ]
        {/foreach}
        };
    </script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.1/angular.js"></script>
    <script src="/js/math.js"></script>
    
    <div ng-app="mathtrade" ng-controller="math" class="container" id="math">
        <div class="row-fluid">
            {include 'math/top.tpl'}
        </div>
        <div class="row-fluid">
            <div class="span8">
                {include 'math/tiles.tpl'}
            </div>
            <div class="span4" style="padding-left:20px">    
                {include 'math/list.tpl'}
            </div>
        </div>
    </div>
{/block}