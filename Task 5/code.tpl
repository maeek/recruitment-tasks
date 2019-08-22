<!-- 
  File: snippets/main_nav.tpl
-->

<nav id="mainNav" class="is-hidden-mobile">
  <ul class="shb-list-inline">
    {foreach from=$menulists->main_menu->links item="menu"}
      <li class="shb-nav-item{if ($template == 'category') && $menu->url|strpos:$category->url !== false} active
      {elseif $template == 'collection' && ($menu->url|strpos:$collection->url !== false)} active
      {elseif $template == 'list_categories' && ($menu->url|strpos:'/all' != false || $menu->url|strpos:'/wszystkie' != false)} active
      {elseif isset($page) and $page->url == $menu->url} active
      {elseif isset($product) and $product_url == $menu->url} active
      {elseif $template == 'home'}{if $menu->url == '/'} active{/if}{/if}">
        <a href="{$menu->url}">{$menu->title}</a>
        {if $menulists->{$menu->title|lower|replace:$langletters:$letters}->links|count > 0}
          <ul class="shb-submenu shb-list-block">
            {foreach $menulists->{$menu->title|lower|replace:$langletters:$letters}->links item="submenu"}
              <li>
                <a href="{$submenu->url}">{$submenu->title}</a>
                <!-- My code -->
                <ul class="shb-sub-submenu shb-list-block">
                  {foreach from=$categories->all item="cat" name="catList"}
                    {foreach from=$cat->childs item="ch" name="chlist"}
                      {foreach from=$ch->products item="p" name="list"}
                        {if $ch->title === $submenu->title}
                          <li><a href="/{$p->url}">{$p->name}</a></li>
                        {/if}
                      {/foreach}
                    {/foreach}
                  {/foreach}
                </ul>
                <!-- END My code -->
              </li>
            {/foreach}
          </ul>
        {/if}
      </li>
    {/foreach}
  </ul>
</nav>