<ul class="thumbnails">
    {foreach $games as $item}
        <li class="span4">
            <a class="thumbnail text-centered math-game" ng-click="add('{$item['name']|escape:quotes|replace:'"':'&quot;'}', '{$item['owner']}', '{$item['city']}')">
                <span class="name">{$item['name']}</span>
                
                <span class="owner">{$item['owner']}</span>
                <span class="city">{$item['city']}</span>
            </a>
            <span class="icons">
                <a href="{$item['link']}" target="_blank">
                    <i class="icon-font icon-link"></i>
                </a>
                {if $item['state'] === 1}<i class="icon-lock" title="{$item['state_comment']}"></i>
                {elseif $item['state'] === 2}<i class="icon-unlock" title="{$item['state_comment']}"></i>
                {elseif $item['state'] === 3}<i class="icon-thumbs-up" title="{$item['state_comment']}"></i>
                {elseif $item['state'] === 4}<i class="icon-check" title="В хорошем состоянии"></i>
                {elseif $item['state'] === 5}<i class="icon-thumbs-down" title="{$item['state_comment']}"></i>                
                {/if}
                
                {if $item['shipment'] === 1}
                    <i class="icon-circle-arrow-left" title="Готов принять почтой"></i>
                    <i class="icon-circle-arrow-right" title="Готов отправить по почте"></i>
                {elseif $item['shipment'] === 2}
                    <i class="icon-circle-arrow-right" title="Готов отправить почтой"></i>
                {elseif $item['shipment'] === 3}
                    <i class="icon-circle-arrow-left" title="Готов принять по почте"></i>                
                {/if}

                {if $item['lang'] === 1}En &rarr; Ру
                {elseif $item['lang'] === 2}СНГ
                {elseif $item['lang'] === 3}<i class="icon-stop" title="Чёрный квадрат Малевича, символизирует языконезависимость"></i>
                {elseif $item['lang'] === 4}En
                {else}<i class="icon-question-sign" title="{$item['lang_comment']}"></i>
                {/if}
                
                {if $item['comment']}<i class="icon-comment" title="{$item['comment']}"></i>{/if}
            </span>
        </li>
    {if !($item@iteration%3)}
    </ul><br /><ul class="thumbnails">
    {/if}   
    {/foreach}
</ul>