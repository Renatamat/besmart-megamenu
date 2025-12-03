	<div id="_desktop_iqitmegamenu-mobile">

		<div id="iqitmegamenu-mobile"

			class="mobile-menu js-mobile-menu {if $iqitTheme.mm_type == 'push'} h-100 {/if} d-flex flex-column">



			<div class="mm-panel__header-wrapper  mobile-menu__header-wrapper px-4">
                            <div class="mm-panel__header pt-4 pb-2">
                                <div class="d-flex flex-row gap-4 align-items-center mobile-menu_title">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0.805664 5.19727C0.805664 4.78305 1.14145 4.44727 1.55566 4.44727H22.4452C22.8594 4.44727 23.1952 4.78305 23.1952 5.19727C23.1952 5.61148 22.8594 5.94727 22.4452 5.94727H1.55566C1.14145 5.94727 0.805664 5.61148 0.805664 5.19727ZM0.805664 11.9999C0.805664 11.5857 1.14145 11.2499 1.55566 11.2499H22.4452C22.8594 11.2499 23.1952 11.5857 23.1952 11.9999C23.1952 12.4141 22.8594 12.7499 22.4452 12.7499H1.55566C1.14145 12.7499 0.805664 12.4141 0.805664 11.9999ZM0.805664 18.8026C0.805664 18.3884 1.14145 18.0526 1.55566 18.0526H14.4452C14.8594 18.0526 15.1952 18.3884 15.1952 18.8026C15.1952 19.2168 14.8594 19.5526 14.4452 19.5526H1.55566C1.14145 19.5526 0.805664 19.2168 0.805664 18.8026Z" fill="black"></path>
                                      </svg>
                                    <span>Menu</span>
                                </div>
				<div class="mobile-menu__header js-mobile-menu__header">
					<button type="button" class="mobile-menu__back-btn js-mobile-menu__back-btn btn">
						<span aria-hidden="true" class="fa fa-angle-left  align-middle mr-4"></span>
						<span class="mobile-menu__title js-mobile-menu__title paragraph-p1 align-middle"></span>
					</button>
				</div>

				<button type="button" class="btn btn-icon mobile-menu__close js-mobile-menu__close" aria-label="Close"
					data-toggle="dropdown">
					<span class="icon-close">
				</button>
                            </div>
			</div>



			<div class="position-relative mobile-menu__content flex-grow-1 mx-c16 my-c24 ">

				<ul

					class="{if $iqitTheme.mm_type == 'push'}position-absolute h-100 {/if} w-100  m-0 mm-panel__scroller mobile-menu__scroller px-4 pb-4">

					<li class="mobile-menu__above-content">{hook h='displayAboveMobileMenu'}</li>

						{if isset($iqitTheme.mm_content) && $iqitTheme.mm_content == 'accordion'}

							{include file="module:iqitmegamenu/views/templates/hook/_partials/mobile_menu.tpl" menu=$mobile_menu}

						{elseif $iqitTheme.mm_content == 'panel'}

							{include file="module:iqitmegamenu/views/templates/hook/_partials/mobile_menu_panel.tpl" menu=$mobile_menu}

						{else}



		

								{foreach $mobile_menu as $tab}

									<li

										class="d-flex align-items-center mobile-menu__tab mobile-menu__tab--id-{$tab.id_tab} {if !empty($tab.submenu_content)} mobile-menu__tab--has-submenu js-mobile-menu__tab--has-submenu{/if} js-mobile-menu__tab">

										<a class="flex-fill mobile-menu__link  {if $tab.active_label} mobile-menu__link--only-icon{/if}

										{if isset($iqitTheme.mm_expand_trigger) && $iqitTheme.mm_expand_trigger == 'entire-link'}		

											{if !empty($tab.submenu_content)}js-mobile-menu__link--has-submenu{/if} 

										{/if}

										" {if ($tab.url)}href="{$tab.url}" {/if} {if $tab.new_window}target="_blank" rel="noopener noreferrer" {/if}>

											{if $tab.icon_type && !empty($tab.icon_class)} 

												<i class="icon fa {$tab.icon_class} mobile-menu__tab-icon"></i>

											{/if}

											

											{if !$tab.icon_type && !empty($tab.icon)}

												<img src="{$tab.icon}" alt="{$tab.title}" class="mobile-menu__tab-icon mobile-menu__tab-icon--img" />

											{/if}



										<span class="js-mobile-menu__tab-title {if $tab.active_label}d-none{/if}">{$tab.title|replace:'/n':'<br />' nofilter}</span>



											{if !empty($tab.label)}

												<span class="mobile-menu__legend mobile-menu__legend--id-{$tab.id_tab} ">

												{if !empty($tab.legend_icon)} 

													<i class="icon fa {$tab.legend_icon}"></i>

												{/if} 

												{$tab.label}

												</span>

											{/if}

										</a>

										{if !empty($tab.submenu_content)}

											<span class="mobile-menu__arrow js-mobile-menu__link--has-submenu">

												<i class="icon-chevron-right" aria-hidden="true"></i>

											</span>

										{/if}



										{if isset($tab.submenu_content_tabs)}

											<div class="mobile-menu__submenu mobile-menu__submenu--panel py-4 js-mobile-menu__submenu">

												<ul>

													{foreach $tab.submenu_content_tabs as $innertab name=innertabscontent}



														<li

															class="d-flex align-items-center mobile-menu__tab mobile-menu__tab--id-{$innertab->id_tab} {if !empty($innertab->submenu_content)} mobile-menu__tab--has-submenu js-mobile-menu__tab--has-submenu{/if} js-mobile-menu__tab">

															<a class="flex-fill mobile-menu__link  {if $innertab->active_label} mobile-menu__link--only-icon{/if}  {if isset($iqitTheme.mm_expand_trigger) && $iqitTheme.mm_expand_trigger == 'entire-link'}{if !empty($innertab->submenu_content)}js-mobile-menu__link--has-submenu{/if}{/if} "

																{if ($innertab->url)}href="{$innertab->url}" {/if}

																{if $innertab->new_window}target="_blank" rel="noopener noreferrer" {/if}>



																	{if $innertab->icon_type && !empty($innertab->icon_class)} 

																		<i class="icon fa {$innertab->icon_class} mobile-menu__tab-icon"></i>

																	{/if}

																	

																	{if !$innertab->icon_type && !empty($innertab->icon)}

																		<img src="{$innertab->icon}" alt="{$innertab->title}" class="mobile-menu__tab-icon mobile-menu__tab-icon--img" />

																	{/if}

																

																	<span class="js-mobile-menu__tab-title {if $innertab->active_label}d-none{/if}">{$innertab->title|replace:'/n':'<br />' nofilter}</span>



																{if !empty($innertab->label)}

																	<span

																		class="mobile-menu__legend mobile-menu__legend--id-{$innertab->id_tab}"> {if !empty($innertab->legend_icon)} <i

																		class="icon fa {$innertab->legend_icon}"></i>{/if} {$innertab->label}</span>

																{/if}

															</a>

															{if !empty($innertab->submenu_content)}

																<span class="mobile-menu__arrow js-mobile-menu__link--has-submenu">

																	<i class="fa fa-angle-right expand-icon" aria-hidden="true"></i>

																</span>

															{/if}



															{if !empty($innertab->submenu_content)}

																<div class="mobile-menu__submenu mobile-menu__submenu--panel  py-4 js-mobile-menu__submenu">

																	{foreach $innertab->submenu_content as $element}

																			{include file="module:iqitmegamenu/views/templates/hook/_partials/submenu_content_mobile.tpl" node=$element}

																	{/foreach}

																</div>

															{/if}



														</li>



													{/foreach}

													<ul>

											</div>

										{else}



											{if !empty($tab.submenu_content)}

												<div class="mobile-menu__submenu mobile-menu__submenu--panel py-4 js-mobile-menu__submenu">

													{foreach $tab.submenu_content as $element}

														{include file="module:iqitmegamenu/views/templates/hook/_partials/submenu_content_mobile.tpl" node=$element}

													{/foreach}

												</div>

											{/if}

										{/if}

									</li>

								{/foreach}

					{/if}

					<li class="mobile-menu__below-content"> {hook h='displayBelowMobileMenu'}</li>

				</ul>

			</div>



		<div class="js-top-menu-bottom mobile-menu__footer justify-content-between d-flex flex-column">
			<div class="d-flex align-items-start mobile-menu__wishlist-cart px-4 py-6 d-flex flex-row gap-4"> 
                               
                               <a href="{url entity='module' name='iqitwishlist' controller='view'}" class="btn-wishlist btn btn-empty btn-lg d-flex flex-row gap-2">
                                    <span>{l s='Wishlist' d='Shop.Theme.Global'}</span>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M5.70983 2.18936C4.99727 2.27128 4.24557 2.51624 3.64411 2.86254C3.19503 3.1211 2.87119 3.36808 2.50781 3.72922C1.63197 4.59964 1.11099 5.65844 0.937792 6.92C0.904252 7.16422 0.903352 7.95066 0.936332 8.2C1.10069 9.44334 1.62227 10.5225 2.46919 11.3716C2.75785 11.661 9.03347 17.4663 9.16751 17.5679C9.64643 17.9309 10.3546 17.9309 10.8328 17.5679C10.9096 17.5096 14.5385 14.1596 17.4382 11.4701C17.7164 11.2121 18.0715 10.7694 18.2955 10.4013C18.7094 9.7211 18.9542 9.01942 19.0634 8.2C19.1059 7.88108 19.0951 7.14342 19.043 6.80414C18.9413 6.14194 18.7734 5.62542 18.4736 5.05138C17.7621 3.68922 16.4702 2.6789 14.9684 2.31002C14.3083 2.14788 13.4506 2.11638 12.7902 2.23004C11.8102 2.39872 10.8799 2.8367 10.1456 3.47512L10.0009 3.60092L9.82555 3.44976C9.07473 2.80238 8.09677 2.36088 7.07631 2.20856C6.78479 2.16506 6.01527 2.15424 5.70983 2.18936ZM5.69023 3.46046C4.99835 3.56688 4.35787 3.83798 3.79583 4.26232C3.56701 4.43506 3.15457 4.85178 2.98651 5.08C1.83481 6.64404 1.89101 8.75574 3.12355 10.23C3.31395 10.4578 3.06817 10.227 6.76599 13.65C10.2889 16.9111 9.98085 16.6506 10.1432 16.5061C10.2528 16.4086 16.125 10.9743 16.4689 10.6522C16.7708 10.3694 16.9739 10.1325 17.165 9.84C18.2609 8.16312 17.999 5.93748 16.5432 4.55558C15.7612 3.81332 14.776 3.42038 13.6963 3.4201C13.0252 3.4199 12.4466 3.55008 11.8693 3.83112C11.3506 4.08372 10.955 4.39044 10.4897 4.90104C10.3493 5.05502 10.2213 5.12448 10.0556 5.13646C9.80653 5.15448 9.65505 5.0759 9.42115 4.80738C9.25389 4.61536 8.94095 4.3339 8.71715 4.1742C8.19513 3.80168 7.51477 3.53572 6.86421 3.44984C6.55007 3.40836 5.99633 3.41338 5.69023 3.46046Z" fill="currentColor"/>
                                    </svg> 
                                </a>  
                                {include 'module:ps_shoppingcart/ps_shoppingcart-content-mobile-menu.tpl'}
                        </div>
                                
			<div class="d-flex align-items-start mobile-menu__language-currency js-mobile-menu__language-currency px-4 py-4">



			{hook h="litespeedEsiBegin" m="ps_languageselector" field="widget_block" tpl="module:ps_languageselector/ps_languageselector-mobile-menu.tpl"}

				{widget_block name="ps_languageselector"}

					{include 'module:ps_languageselector/ps_languageselector-mobile-menu.tpl'}

				{/widget_block}

			{hook h="litespeedEsiEnd"}



			{hook h="litespeedEsiBegin" m="ps_currencyselector" field="widget_block" tpl="module:ps_currencyselector/ps_currencyselector-mobile-menu.tpl"}

				{widget_block name="ps_currencyselector"}

					{include 'module:ps_currencyselector/ps_currencyselector-mobile-menu.tpl'}

				{/widget_block}

			{hook h="litespeedEsiEnd"}



			</div>





			<div class="mobile-menu__user d-flex flex-row py-6 justify-content-space-between">

			<a href="{$urls.pages.my_account}" class="text-reset"><span class="icon-user"></span>

				{hook h="litespeedEsiBegin" m="ps_customersignin" field="widget_block" tpl="module:ps_customersignin/ps_customersignin-mobile-menu.tpl"}

				{widget_block name="ps_customersignin"}

					{include 'module:ps_customersignin/ps_customersignin-mobile-menu.tpl'}

				{/widget_block}

				{hook h="litespeedEsiEnd"}

			</a>
                        {if $logged}                                                     
                            <a href="{$urls.actions.logout}" class="text-reset logout-link border-left ">                              
                               {l s='Sign out' d='Shop.Theme.Actions'}
                                <span class="icon-logout"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                    <path d="M12.4391 3.22917C12.5717 2.91063 12.9375 2.75985 13.2561 2.89225C15.0619 3.64405 16.5523 4.998 17.4732 6.72363C18.3941 8.44922 18.6889 10.4407 18.3082 12.3592C17.9275 14.2776 16.8948 16.0053 15.385 17.2485C13.8751 18.4918 11.9812 19.1742 10.0253 19.1797C8.06935 19.1851 6.1711 18.5136 4.65423 17.2786C3.13742 16.0437 2.09472 14.3212 1.70339 12.4048C1.31219 10.4885 1.59626 8.49572 2.50742 6.76514C3.41865 5.03451 4.90121 3.67283 6.70257 2.91097C7.02049 2.77653 7.38763 2.92508 7.52207 3.243C7.65634 3.56076 7.50766 3.92714 7.19004 4.06169C5.65442 4.71108 4.39097 5.87254 3.61419 7.34782C2.83747 8.82303 2.59464 10.5215 2.92816 12.1549C3.26174 13.7885 4.15064 15.2568 5.44362 16.3094C6.73652 17.3619 8.35411 17.9343 10.0213 17.9297C11.6885 17.925 13.3028 17.3432 14.5899 16.2834C15.877 15.2236 16.7581 13.7512 17.0826 12.1159C17.4071 10.4805 17.1555 8.78291 16.3705 7.31201C15.5856 5.84108 14.3152 4.68706 12.776 4.04622C12.4574 3.91352 12.3065 3.54778 12.4391 3.22917ZM9.37429 8.89893V1.05469C9.37429 0.70954 9.65415 0.429737 9.99929 0.429688C10.3445 0.429688 10.6243 0.70951 10.6243 1.05469V8.89893C10.6241 9.24395 10.3444 9.52393 9.99929 9.52393C9.65426 9.52388 9.37446 9.24392 9.37429 8.89893Z" fill="black"/>
                                  </svg>
                                </span>
                            </a>
                        {/if}

			</div>





			</div>

		</div>

	</div>