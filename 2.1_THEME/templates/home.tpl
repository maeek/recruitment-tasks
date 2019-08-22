<!-- ### HOME ### --><!-- banner_1_1549482115243 -->
<div id="{$settings->banner_1_1549482115243->name}" class="shb-banner-1 shb-section-slider">
    <div class="container">
        {if $settings->banner_1_1549482115243->slides|count > 0 && $settings->isBannerVisible({$settings->banner_1_1549482115243->name})}
            <div class="shb-slider-loader shb-dots-loader">
                <div class="shb-dot"></div>
                <div class="shb-dot"></div>
                <div class="shb-dot"></div>
            </div>
            <div class="shb-slider-wrapper" data-banner-handler="{$settings->banner_1_1549482115243->name}" data-autoplay="{$settings->banner_1_1549482115243->settings->autoplay->value}" data-duration="{$settings->banner_1_1549482115243->settings->duration->value}" data-show-arrows="{$settings->banner_1_1549482115243->settings->show_arrows->value}" data-animation="{$settings->banner_1_1549482115243->settings->animation_effect->value}">
                <div class="shb-slider">
                    <div class="shb-slides">
                        {foreach from=$settings->banner_1_1549482115243->slides item="slide"}
                            {if $slide->settings->slide_visibility == "1"}
                                <div data-slide-handler="{$slide->name}">
                                    {if $slide->settings->link_url != 'none'}
                                    <a href="{$slide->settings->link_url}" title="{$slide->settings->title}">
                                        {/if}
                                        <figure>
                                            <img src="{$slide->img_url}" alt="{$slide->settings->image_alt}" />
                                            <figcaption class="shb-alignment-{$slide->settings->alignment}">
                                                <h2 class="shb-slider-header" style="color: {$slide->settings->title_color}; --desktop-font-size: {$slide->settings->title_text_size}; --mobile-font-size: {$slide->settings->title_text_size_mobile};opacity: 0;transition: opacity .4s;color:#fff;font-weight:900">Pojawiam się po 1s</h2>
                                                <p class="shb-slider-description" style="color: {$slide->settings->description_color}; --desktop-font-size: {$slide->settings->description_text_size}; --mobile-font-size: {$slide->settings->description_text_size_mobile}">{$slide->settings->description}</p>
                                            </figcaption>
                                        </figure>
                                        {if $slide->settings->link_url != 'none'}
                                    </a>
                                    {/if}
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                </div>
            </div>
        {else}
            <div class="shb-blankslate-banner" data-banner-handler="{$settings->banner_1_1549482115243->name}">
                <figure{if !$settings->isBannerVisible({$settings->banner_1_1549482115243->name})} data-slide-handler="1"{/if}>
                    <a href="/admin/layout/theme/settings/{$shop->active_theme_id}" class="banner-add-button" data-img-info="{trans preview-trans=0}store_theme_translations.banner_blankslate_banner_width{/trans} 1110px">
                        <i class="shb-icon shb-icon-empty-img"></i>
                        <span>{trans preview-trans=0}store_theme_translations.banner_blankslate_add_label{/trans}</span>
                        <span class="shb-size-info">{trans preview-trans=0}store_theme_translations.banner_blankslate_banner_width{/trans} 1110px</span>
                    </a>
                </figure>
            </div>
        {/if}
    </div>
</div>
<!-- END banner_1_1549482115243 -->
<div class="container">
    <iframe width="100%" height="315" src="https://www.youtube.com/embed/sjZ_s3EeSwA?autoplay=1&controls=0&loop=1&disablekb=1&mute=1&playlist=sjZ_s3EeSwA" frameborder="0" allow="accelerometer; loop; controls; mute; autoplay; encrypted-media; gyroscope" allowfullscreen></iframe>
</div>
<!-- banner_12_1549482124623 -->
<div class="shb-banner-12 shb-section-slider" data-banner-handler="{$settings->banner_12_1549482124623->name}">
    <div class="container">
        <div class="columns shb-slides">
            {if $settings->banner_12_1549482124623->slides|count > 0}
                {foreach from=$settings->banner_12_1549482124623->slides item="slide" name="slides_list"}
                    <div class="column shb-slide" data-slide-handler="{$slide->name}">
                        {if $slide->settings->link_url != 'none'}
                        <a href="{$slide->settings->link_url}">
                            {/if}
                            <figure>
                                <img src="{$slide->img_url}" alt="{$slide->image_alt}" />
                                <figcaption class="shb-alignment-{$slide->settings->alignment}">
                                    <h2 class="shb-slider-header" style="color: {$slide->settings->title_color}; --desktop-font-size: {$slide->settings->title_text_size}; --mobile-font-size: {$slide->settings->title_text_size_mobile}">{$slide->settings->title}</h2>
                                    <p class="shb-slider-description" style="color: {$slide->settings->description_color}; --desktop-font-size: {$slide->settings->description_text_size}; --mobile-font-size: {$slide->settings->description_text_size_mobile}">{$slide->settings->description}</p>
                                </figcaption>
                            </figure>
                            {if $slide->settings->link_url != 'none'}
                        </a>
                        {/if}
                    </div>
                {/foreach}
                {if $settings->banner_12_1549482124623->slides|count < 3}
                    {for $foo=1 to 3-{$settings->banner_12_1549482124623->slides|count}}
                        <div class="column shb-banner shb-blankslate-banner">
                            <figure>
                                <a href="/admin/layout/theme/settings/{$shop->active_theme_id}" class="banner-add-button" data-img-info="{trans preview-trans=0}store_theme_translations.banner_blankslate_banner_size{/trans} 350px x 180px">
                                    <i class="shb-icon shb-icon-empty-img"></i>
                                    <span>{trans preview-trans=0}store_theme_translations.banner_blankslate_add_label{/trans}</span>
                                    <span class="shb-size-info">{trans preview-trans=0}store_theme_translations.banner_blankslate_banner_size{/trans} 350px x 180px</span>
                                </a>
                            </figure>
                        </div>
                    {/for}
                {/if}
            {else}
                {for $foo=1 to 3}
                    <div class="column shb-banner shb-blankslate-banner">
                        <figure>
                            <a href="/admin/layout/theme/settings/{$shop->active_theme_id}" class="banner-add-button" data-img-info="{trans preview-trans=0}store_theme_translations.banner_blankslate_banner_size{/trans} 350px x 180px">
                                <i class="shb-icon shb-icon-empty-img"></i>
                                <span>{trans preview-trans=0}store_theme_translations.banner_blankslate_add_label{/trans}</span>
                                <span class="shb-size-info">{trans preview-trans=0}store_theme_translations.banner_blankslate_banner_size{/trans} 350px x 180px</span>
                            </a>
                        </figure>
                    </div>
                {/for}
            {/if}
        </div>
    </div>
</div>
<!-- END banner_12_1549482124623 -->


<!-- productgrid_col3_4_1549482133511 -->
{snippet
  file="home_grid"
  grid_class="shb-grid-col-3"
  product_col_class="column is-12-mobile is-4-tablet"
  sidebar_col_class="column is-3-tablet"
  product_view=1
  set_image_ratio={$settings->product_image_ratio}
  settings_frontpage_collection=$settings->frontpage_collection
  settings_frontpage_collection_products_count=$settings->hp_frontpage_collection_products_count
  home_show_sidebar=$settings->home_show_sidebar
  home_show_sidebar_subcategories=$settings->home_show_sidebar_subcategories
  home_show_categories_nav=$settings->home_show_categories_nav
  home_show_collections_nav=$settings->home_show_collections_nav
  home_show_vendors_nav=$settings->home_show_vendors_nav
  product_list_show_add_to_cart = {$settings->product_list_show_add_to_cart}
  product_list_show_title = {$settings->product_list_show_title}
  product_list_title_limit = {$settings->product_list_title_limit}
  product_list_show_variants = {$settings->product_list_show_variants}
  product_list_show_variants_on_hover = {$settings->product_list_show_variants_on_hover}
}
<!-- END productgrid_col3_4_1549482133511 -->


<!-- newsletter_5_1549482146809 -->
<div class="shb-newsletter-widget-5">
	<div class="container">
		<div class="shb-newsletter-text align-center column is-offset-1-tablet is-10-tablet is-offset-2-desktop is-8-desktop is-vertical-paddingless">
			<h3>{trans}store_theme_translations.newsletter_headline{/trans}</h3>
			<p>{trans}store_theme_translations.newsletter_baseline{/trans}</p>
		</div>
		<div class="shb-newsletter-form column is-offset-2-tablet is-8-tablet is-offset-3-desktop is-6-desktop is-vertical-paddingless">
			<form action="{reverse_url name=shop_newsletter}" method="post">
				<div class="shb-form-inline align-center">
					<input type="text" name="email" class="shb-input" aria-label="Newsletter Email"
						   placeholder="{trans preview-trans=0}store_theme_translations.newsletter_placeholder{/trans}"/>
					<input name="emailcheck" type="email" class="emailcheck" />
					<button type="submit"
							class="shb-btn shb-btn-small shb-btn-dark">{trans}store_theme_translations.newsletter_button{/trans}</button>
				</div>
				{if $settings->newsletter_clause != 'none'}
					<div class="shb-input-group">
						<div class="shb-checkbox">
							{if $settings->newsletter_clause == 'checkbox_with_text'}
								<input type="checkbox" name="newsletter_clause" id="newsletter_clause" value="1"
									   data-required-text="{trans preview-trans=0}store_theme_translations.newsletter_alert_content{/trans}">
								<label for="newsletter_clause">{'store_theme_translations.newsletter_checkbox_input_text'|t|replace:'{link_to_terms_and_conditions}':{reverse_url name=shop_terms_and_conditions_link_to_pdf}|replace:'{link_to_privacy_policy}':{reverse_url name=shop_privacy_policy_link_to_pdf}}</label>
							{elseif $settings->newsletter_clause == 'only_text'}
								<span class="shb-form-clause">{'store_theme_translations.newsletter_checkbox_input_text'|t|replace:'{link_to_terms_and_conditions}':{reverse_url name=shop_terms_and_conditions_link_to_pdf}|replace:'{link_to_privacy_policy}':{reverse_url name=shop_privacy_policy_link_to_pdf}}</span>
							{/if}
						</div>
					</div>
				{/if}
			</form>
		</div>
	</div>
</div>
<!-- END newsletter_5_1549482146809 -->


<!-- separator_9_1549482160176 -->
<div class="shb-text-header-9"></div>
<!-- END separator_9_1549482160176 -->

 <section class="section shb-images-rows-3-3-2">
    <div class="container">
        <div class="columns is-mobile">
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
        </div>
        <div class="columns is-mobile">
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
        </div>
        <div class="columns is-mobile">
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
            <div class="column is-one-third"><img src="{$settings->example_img}" alt="Example photo"></div>
        </div>
    </div>
</div>


