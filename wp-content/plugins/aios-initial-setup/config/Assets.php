<?php

namespace AiosInitialSetup\Config;

trait Assets
{
  /**
   * Get enqueue option value
   *
   * @return mixed|void
   */
  protected function enqueue_options()
  {
    $options = get_option('aios-enqueue-cdn', []);

    foreach ($options as $k => $v) {
      $options[$k] = (int) $v;
    }

    return $options;
  }

  /**
   * Get quick search option
   *
   * @return mixed|void
   */
  protected function quick_search_options()
  {
    return get_option('aios-quick-search', []);
  }

  /**
   * Pre-register scripts on 'wp_default_scripts' action, they won't be overwritten by $wp_scripts->add().
   *
   * @param $scripts
   * @param $handle
   * @param $src
   * @param array $deps
   * @param bool $ver
   * @param bool $in_footer
   */
  protected function set_script($scripts, $handle, $src, $deps = [], $ver = false, $in_footer = false) {
    $script = $scripts->query($handle, 'registered');

    if ($script) {
      // If already added
      $script->src  = $src;
      $script->deps = $deps;
      $script->ver  = $ver;
      $script->args = $in_footer;

      unset($script->extra['group']);

      if ($in_footer) {
        $script->add_data('group', 1);
      }
    } else {
      // Add the script
      if ($in_footer) {
        $scripts->add($handle, $src, $deps, $ver, 1);
      } else {
        $scripts->add($handle, $src, $deps, $ver);
      }
    }
  }

  /**
   * Enqueue resources from ai resources
   *
   * @param $scripts
   */
  protected function jquery_assets($scripts)
  {
    $assets_url = 'https://resources.agentimage.com/libraries/';

    $this->set_script($scripts, 'jquery-migrate', $assets_url.'jquery-migrate/jquery-migrate-1.4.1-wp.js', [], '1.4.1-wp');
    $this->set_script($scripts, 'jquery-core', $assets_url.'jquery/jquery-1.12.4-wp.js', [], '1.12.4-wp');
    $this->set_script($scripts, 'jquery', false, ['jquery-core', 'jquery-migrate'], '1.12.4-wp');

    // All the jQuery UI stuff comes here.
    $this->set_script($scripts, 'jquery-ui-core', $assets_url.'jquery-ui/core.min.js', ['jquery'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-core', $assets_url.'jquery-ui/effect.min.js', ['jquery'], '1.11.4-wp', 1);

    $this->set_script($scripts, 'jquery-effects-blind', $assets_url.'jquery-ui/effect-blind.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-bounce', $assets_url.'jquery-ui/effect-bounce.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-clip', $assets_url.'jquery-ui/effect-clip.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-drop', $assets_url.'jquery-ui/effect-drop.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-explode', $assets_url.'jquery-ui/effect-explode.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-fade', $assets_url.'jquery-ui/effect-fade.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-fold', $assets_url.'jquery-ui/effect-fold.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-highlight', $assets_url.'jquery-ui/effect-highlight.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-puff', $assets_url.'jquery-ui/effect-puff.min.js', ['jquery-effects-core', 'jquery-effects-scale'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-pulsate', $assets_url.'jquery-ui/effect-pulsate.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-scale', $assets_url.'jquery-ui/effect-scale.min.js', ['jquery-effects-core', 'jquery-effects-size'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-shake', $assets_url.'jquery-ui/effect-shake.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-size', $assets_url.'jquery-ui/effect-size.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-slide', $assets_url.'jquery-ui/effect-slide.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-effects-transfer', $assets_url.'jquery-ui/effect-transfer.min.js', ['jquery-effects-core'], '1.11.4-wp', 1);

    $this->set_script($scripts, 'jquery-ui-accordion', $assets_url.'jquery-ui/accordion.min.js', ['jquery-ui-core', 'jquery-ui-widget'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-autocomplete', $assets_url.'jquery-ui/autocomplete.min.js', ['jquery-ui-menu', 'wp-a11y'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-button', $assets_url.'jquery-ui/button.min.js', ['jquery-ui-core', 'jquery-ui-widget'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-datepicker', $assets_url.'jquery-ui/datepicker.min.js', ['jquery-ui-core'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-dialog', $assets_url.'jquery-ui/dialog.min.js', ['jquery-ui-resizable', 'jquery-ui-draggable', 'jquery-ui-button', 'jquery-ui-position'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-draggable', $assets_url.'jquery-ui/draggable.min.js', ['jquery-ui-mouse'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-droppable', $assets_url.'jquery-ui/droppable.min.js', ['jquery-ui-draggable'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-menu', $assets_url.'jquery-ui/menu.min.js', ['jquery-ui-core', 'jquery-ui-widget', 'jquery-ui-position'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-mouse', $assets_url.'jquery-ui/mouse.min.js', ['jquery-ui-core', 'jquery-ui-widget'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-position', $assets_url.'jquery-ui/position.min.js', ['jquery'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-progressbar', $assets_url.'jquery-ui/progressbar.min.js', ['jquery-ui-core', 'jquery-ui-widget'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-resizable', $assets_url.'jquery-ui/resizable.min.js', ['jquery-ui-mouse'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-selectable', $assets_url.'jquery-ui/selectable.min.js', ['jquery-ui-mouse'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-selectmenu', $assets_url.'jquery-ui/selectmenu.min.js', ['jquery-ui-menu'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-slider', $assets_url.'jquery-ui/slider.min.js', ['jquery-ui-mouse'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-sortable', $assets_url.'jquery-ui/sortable.min.js', ['jquery-ui-mouse'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-spinner', $assets_url.'jquery-ui/spinner.min.js', ['jquery-ui-button'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-tabs', $assets_url.'jquery-ui/tabs.min.js', ['jquery-ui-core', 'jquery-ui-widget'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-tooltip', $assets_url.'jquery-ui/tooltip.min.js', ['jquery-ui-core', 'jquery-ui-widget', 'jquery-ui-position'], '1.11.4-wp', 1);
    $this->set_script($scripts, 'jquery-ui-widget', $assets_url.'jquery-ui/widget.min.js', ['jquery'], '1.11.4-wp', 1);

    // This just updates the dependency of `jquery-touch-punch`.
    $this->set_script($scripts, 'jquery-touch-punch', false, ['jquery-ui-widget', 'jquery-ui-mouse'], '0.2.2', 1);
  }

  /**
   * Enqueue Required Assets
   *
   * @param $options
   */
  protected function enqueue_required_assets($options)
  {
    // Enqueue AI Fonts
    wp_enqueue_style('agentimage-font', 'https://resources.agentimage.com/fonts/agentimage.font.icons.css', [], null, false);

    // Enqueue jQuery wp_enqueue array('jquery') - first make sure that jquery file is include in the header
    wp_enqueue_script('jquery');

    // Enqueue Bootstrap
    $bootstrap_url = $options['bootstrap_no_components_css'] ?? 0 === 1
        ? 'https://resources.agentimage.com/bootstrap/bootstrap.noicons.min.css'
        : 'https://resources.agentimage.com/bootstrap/bootstrap.min.css';

    wp_enqueue_style('aios-starter-theme-bootstrap', $bootstrap_url);
  }

  /**
   * List of default styles
   * Note: Adding/Removing assets need to be change on the api as well
   *
   * @return array
   */
  protected function default_styles()
  {
    return [
      'aios-starter-theme-popup-style' => 'https://resources.agentimage.com/libraries/css/aios-popup.min.css',
      'aios-initial-setup-frontend-style' => 'https://resources.agentimage.com/libraries/css/frontend.min.css',
    ];
  }

  /**
   * List of default scripts
   * Note: Adding/Removing assets need to be change on the api as well
   *
   * @return array
   */
  protected function default_scripts()
  {
    return [
      'aios-starter-theme-bowser' => 'https://resources.agentimage.com/libraries/js/bowser-scripts.js',
      'aios-starter-theme-crossbrowserselector' => 'https://resources.agentimage.com/libraries/js/browser-selector.min.js',
      'aios-starter-theme-placeholder' => 'https://resources.agentimage.com/libraries/js/placeholders.min.js',

      // SEO-friendly and self-initializing lazyloader for images (including responsive images picture/srcset)
      'aios-lazysizes' => 'https://resources.agentimage.com/libraries/js/lazysizes.min.js',

      // 'aios-starter-theme-mobile-iframe-fix' => 'https://resources.agentimage.com/libraries/js/mobile-iframe-fix.js',
      // 'aios-starter-theme-html5' => 'https://resources.agentimage.com/libraries/js/html5.js',
      'aios-starter-theme-bootstrap-js' => 'https://resources.agentimage.com/bootstrap/bootstrap.min.js',
      'aios-nav-double-tap' => 'https://resources.agentimage.com/libraries/js/jquery.nav-tab-double-tap.min.js',
      'aios-starter-theme-popup' => 'https://resources.agentimage.com/libraries/js/aios-popup.min.js',
      'aios-default-functions' => 'https://resources.agentimage.com/libraries/js/aios-default-libraries.min.js',
      'aios-initial-setup-frontend-scripts' => 'https://resources.agentimage.com/libraries/js/aios-initial-setup-frontend.min.js',
    ];
  }

  protected function separated_styles()
  {
    return [
      'aios-utilities-style' => 'https://resources.agentimage.com/libraries/css/aios-utilities.min.css',
      'aios-animate-style' => 'https://resources.agentimage.com/libraries/css/animate.min.css',
      'aios-slick-style' => 'https://resources.agentimage.com/libraries/css/slick.min.css',
      'aios-slick-1-8-1-style' => 'https://resources.agentimage.com/libraries/css/slick.min.1.8.1.css',
      'aios-swiper-style' => 'https://resources.agentimage.com/libraries/css/swiper.min.css',
      'aios-simplebar-style' => 'https://resources.agentimage.com/libraries/css/simplebar.min.css',
      'aios-aos-style' => 'https://resources.agentimage.com/libraries/css/aos.min.css',
      'aios-video-plyr' => 'https://resources.agentimage.com/libraries/css/plyr.min.css',
      'aios-bootstrap-select' => 'https://resources.agentimage.com/libraries/css/aios-bootstrap-select.min.css',
      'aios-lazyframe' => 'https://resources.agentimage.com/libraries/css/lazyframe.min.css',
    ];
  }

  protected function separated_scripts()
  {
    return [
      'aios-starter-theme-bootstrap-js' => 'https://resources.agentimage.com/bootstrap/bootstrap.min.js',
      'aios-picturefill' => 'https://resources.agentimage.com/libraries/js/picturefill.min.js',
      'aios-autosize-script' => 'https://resources.agentimage.com/libraries/js/autosize.min.js',
      'aios-chain-height-script' => 'https://resources.agentimage.com/libraries/js/jquery.chain-height.min.js',
      'aios-elementpeek-script' => 'https://resources.agentimage.com/libraries/js/jquery.elementpeek.min.js',
      'aios-splitNav-script' => 'https://resources.agentimage.com/libraries/js/aios-split-nav.min.js',
      'aios-slick-script' => 'https://resources.agentimage.com/libraries/js/slick.min.js',
      'aios-slick-1-8-1-script' => 'https://resources.agentimage.com/libraries/js/slick.min.1.8.1.js',
      'aios-swiper-script' => 'https://resources.agentimage.com/libraries/js/swiper.min.js',
      'aios-simplebar-script' => 'https://resources.agentimage.com/libraries/js/simplebar.min.js',
      'aios-aos-script' => 'https://resources.agentimage.com/libraries/js/aos.min.js',
      'aios-sidebar-navigation-script' => 'https://resources.agentimage.com/libraries/js/jquery.sidenavigation.min.js',
      'aios-video-plyr' => 'https://resources.agentimage.com/libraries/js/plyr.js',
      'aios-bootstrap-select' => 'https://resources.agentimage.com/libraries/js/aios-bootstrap-select.min.js',
      'aios-quick-search-js' => 'https://resources.agentimage.com/libraries/js/aios-quick-search.min.js',
      'aios-lazyframe' => 'https://resources.agentimage.com/libraries/js/lazyframe.min.js',
    ];
  }

	/**
	 * Enqueue Default Scripts
	 * @param $isLegacyJquery
	 */
  protected function enqueue_default_assets($isLegacyJquery)
  {
    foreach ($this->default_styles() as $style_name => $style_url) {
      wp_enqueue_style($style_name, $style_url);
    }

    foreach ($this->default_scripts() as $script_name => $script_url) {
    	if ($script_name === 'aios-starter-theme-popup') {
		    $script_url = $isLegacyJquery ? $script_url : str_replace('/libraries/js/', '/libraries/js/3.6.0/', $script_url);
		    wp_enqueue_script($script_name, $script_url, ['jquery'], null, false);
	    } else {
		    wp_enqueue_script($script_name, $script_url, ['jquery'], null, false);
	    }
    }
  }

  protected function enqueue_separated_names($options)
  {
    $enqueue_style_names = [];
    $enqueue_script_names = [];

    // Quick Search
    $quick_search = get_option('aios-quick-search');
    if ($quick_search['disabled_bootstrap'] ?? 0 !== 1) {
      $enqueue_script_names[] = 'aios-starter-theme-bootstrap-js';
    }

    if (isset($options['lazyframe']) && $options['lazyframe'] === 1) {
	    $enqueue_style_names[] = 'aios-lazyframe';
	    $enqueue_script_names[] = 'aios-lazyframe';
    }

    if (isset($options['picturefill']) && $options['picturefill'] === 1) {
      $enqueue_script_names[] = 'aios-picturefill';
    }

    if (isset($options['utilities']) && $options['utilities'] === 1) {
      $enqueue_style_names[] = 'aios-utilities-style';
    }

    if (isset($options['animate']) && $options['animate'] === 1) {
      $enqueue_style_names[] = 'aios-animate-style';
    }

    if (isset($options['autosize']) && $options['autosize'] === 1) {
      $enqueue_script_names[] = 'aios-autosize-script';
    }

    // chainHight fallback
	  if ((isset($options['chainHight']) && $options['chainHight'] === 1) || (isset($options['chainHeight']) && $options['chainHeight'] === 1)) {
      $enqueue_script_names[] = 'aios-chain-height-script';
    }

    if (isset($options['elementpeek']) && $options['elementpeek'] === 1) {
      $enqueue_script_names[] = 'aios-elementpeek-script';
    }

    if (isset($options['sidebar_navigation']) && $options['sidebar_navigation'] === 1) {
      $enqueue_script_names[] = 'aios-sidebar-navigation-script';
    }

    if (isset($options['slick']) && $options['slick'] === 1) {
      $enqueue_style_names[] = 'aios-slick-style';
      $enqueue_script_names[] = 'aios-slick-script';
    }

    if (isset($options['slick-1-8-1']) && $options['slick-1-8-1'] === 1) {
      $enqueue_style_names[] = 'aios-slick-1-8-1-style';
      $enqueue_script_names[] = 'aios-slick-1-8-1-script';
    }

    if (isset($options['swiper']) && $options['swiper'] === 1) {
      $enqueue_style_names[] = 'aios-swiper-style';
      $enqueue_script_names[] = 'aios-swiper-script';
    }

    if (isset($options['simplebar']) && $options['simplebar'] === 1) {
      $enqueue_style_names[] = 'aios-simplebar-style';
      $enqueue_script_names[] = 'aios-simplebar-script';
    }

    if (isset($options['aos']) && $options['aos'] === 1) {
      $enqueue_style_names[] = 'aios-aos-style';
      $enqueue_script_names[] = 'aios-aos-script';
    }

    if (isset($options['splitNav']) && $options['splitNav'] === 1)
      $enqueue_script_names[] = 'aios-splitNav-script';

    if (isset($options['videoPlyr']) && $options['videoPlyr'] === 1) {
      $enqueue_style_names[] = 'aios-video-plyr';
      $enqueue_script_names[] = 'aios-video-plyr';
    }

    if ($quick_search['enabled'] ?? '' !== '') {
      $enqueue_style_names[] = 'aios-bootstrap-select';
      $enqueue_script_names[] ='aios-bootstrap-select';
      $enqueue_script_names[] = 'aios-quick-search-js';
    }

    return [
      'styles' => $enqueue_style_names,
      'scripts' => $enqueue_script_names,
    ];
  }

  protected function enqueue_separated_assets($handlers, $qs_options)
  {
    if (isset($handlers['scripts'])) {
      $separated_styles = $this->separated_styles();

      foreach ($handlers['styles'] as $style_name) {
        wp_enqueue_style($style_name, $separated_styles[$style_name]);
      }
    }

    if (isset($handlers['scripts'])) {
      $separated_scripts = $this->separated_scripts();

      foreach ($handlers['scripts'] as $script_name) {
        wp_enqueue_script($script_name, $separated_scripts[$script_name], ['jquery'], null, $script_name === 'aios-lazyframe');
      }
    }
  }
}
