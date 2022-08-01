<?php

namespace AiosInitialSetup\App\Controllers;

class AdminMenusController
{
  /**
   * AdminMenus constructor.
   */
  public function __construct()
  {
    // Remove unnecessary admin menu
    add_action('admin_init', [$this, 'unsetAdminMenus'], 11);

    // Re-order admin menu
    // Need to return true to enable menu_order to works
    add_filter('custom_menu_order', function() {return true;});
    add_filter('menu_order', [$this, 'reOrderAdminMenus'], 999);

    // Remove quick edit for all post and page
    add_filter('post_row_actions', [$this, 'removeQuickEdit'], 10, 2);
    add_filter('page_row_actions', [$this, 'removeQuickEdit'], 10, 2);

    // Allow shortcode in menus
    add_filter('walker_nav_menu_start_el', [$this, 'allowShortcodeNav'], 20, 2);
  }

  /**
   * Remove admin menu for non-agentimage users
   *
   * @since 4.3.5
   * @access public
   * @return void
   */
  public function unsetAdminMenus()
  {
    $settingsDisableMenuFilter = (int) get_option('aios_disable_menu_filter', 0);

    if (strtolower( wp_get_current_user()->user_login) !== 'agentimage' && $settingsDisableMenuFilter !== 1) {
      /** List of available menu page
       * remove_menu_page( 'index.php' ); // Dashboard
       * remove_menu_page( 'edit.php' ); // Posts
       * remove_menu_page( 'upload.php' ); // Media
       * remove_menu_page( 'edit.php?post_type=page' ); // Pages
       * remove_menu_page( 'themes.php' ); // Appearance
       * remove_menu_page( 'plugins.php' ); // Plugins
       * remove_menu_page( 'users.php' ); // Users
       * remove_menu_page( 'options-general.php' ); // Settings
       */
      remove_menu_page('edit-comments.php'); /** Comments */
      remove_menu_page('tools.php'); /** Tools */
    }
  }

  /**
   * Reorders admin menu to match the wanted order
   *
   * @param $menu_order
   * @access public
   * @return mixed
   */
  public function reOrderAdminMenus($menu_order)
  {
    // This items will be inserted after dashboard
    $reordered_items = [
      'edit.php',
      'edit.php?post_type=page',
      'wpcf7',
      'aios-cf7-store-messages',
      'edit.php?post_type=aios-agents',
      'edit.php?post_type=aios-listings',
      'edit.php?post_type=aios-testimonials'
    ];

    // This is where we will insert our reordered items
    $reordered_items_insertion_point = 'separator1';

    // Remove items we are supposed to reorder
    $filtered_menu_order = array_diff($menu_order, $reordered_items);

    // Init new order
    $new_menu_order = [];

    // Loop all current menu items
    foreach($filtered_menu_order as $menu_item) {
      // Add to array
      $new_menu_order[] = $menu_item;
      // Our trigger? Let's go!
      if( $menu_item === $reordered_items_insertion_point ) {
        // Add in our reordered items
        $new_menu_order = array_merge($new_menu_order, $reordered_items);
      }
    }

    return $new_menu_order;
  }

  /**
   * Remove quick links from post/page lists
   * To fix non-saving custom post type
   *
   * This was transfer
   * from modules/remove-quick-edit
   *
   * @param array $actions
   * @param null $post
   * @return array - Return the set of links without Quick Edit
   * @since 4.3.5
   * @access public
   */
  public function removeQuickEdit($actions = [], $post = null)
  {
    if (isset($actions['inline hide-if-no-js'])) {
      unset($actions['inline hide-if-no-js']);
    }

    return $actions;
  }

  /**
   * Check if the passed content has any shortcode. Inspired from the
   * core's hasShortcode.
   *
   * @since 3.2.8
   * @access public
   *
   * @param string $content The content to check for shortcode.
   *
   * @return boolean Returns true if the $content has shortcode, false otherwise.
   */
  public function hasShortcode($content) {
    if (str_exists($content, '[')) {
      preg_match_all('/' . get_shortcode_regex() . '/s', $content, $matches, PREG_SET_ORDER);

      if (! empty($matches)) {
        return true;
      }
    }

    return false;
  }

  /**
   * Modifies the menu item display on frontend.
   *
   * @since 3.2.8
   *
   * @param string $item_output The original html.
   * @param object $item  The menu item being displayed.
   *
   * @return string Modified menu item to display.
   */
  public function allowShortcodeNav($item_output, $item) {

    return $this->hasShortcode($item_output) ? do_shortcode(preg_replace('/(https?:\/\/)/', '',  $item_output)) : $item_output;
  }
}

new AdminMenusController();
