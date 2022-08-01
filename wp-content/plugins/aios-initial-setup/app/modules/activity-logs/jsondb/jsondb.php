<?php
/**
 * Description: use JSON as database to insert, update, and remove
 * Created: Bryan Suarez
 */
namespace AiosInitialSetup\App\Modules\ActivityLogs;

use Exception;

/** load traits */
require_once 'traitHelper.php';
require_once 'traitCondition.php';

class JsonDB {
  // Use global traits
  use traitHelper, traitCondition;

  // Class variables
  private $error;

  /**
   * JsonDB constructor.
   * @param string $dataDir
   * @param bool $configurations
   */
  public function __construct( $dataDir = '', $configurations = false )
  {
    $configurations['data_directory'] = WP_CONTENT_DIR.'/'.$dataDir;
    $configurations['json_data'] = WP_CONTENT_DIR.'/'.$dataDir.'/data.json';

    try {
      $this->init($configurations);
    } catch (Exception $e) {
      $this->error = '<strong>Audit logs</strong> Error Message: ' . $e->getMessage();
      add_action('admin_notices', [$this, 'admin_notice_error_handler']);
    }
  }

  /**
   *
   */
  public function admin_notice_error_handler() {
    echo '<div class="notice notice-error is-dismissible"><p>' . $this->error .'</p></div>';
  }

  /**
   * @param string $dataDir
   * @param bool $options
   * @return JsonDB
   */
  public static function store( $dataDir = 'aios-audit-logs', $options = false )
  {
    $_dbinstance = new JsonDB( $dataDir, $options );
    $_dbinstance->data_directory = WP_CONTENT_DIR . '/' . $dataDir;
    $_dbinstance->json_data = WP_CONTENT_DIR . '/' . $dataDir . '/data.json';
    $_dbinstance->variables();
    return $_dbinstance;
  }

  /**
   * Fetch or read data
   */
  public function fetch() {
    return $this->readInStore();
  }

  /**
   * Fetch styled data html
   */
  public function fetchAsUI() {
    $html = '';
    $results = $this->readInStore();

    rsort($results);

    if(! empty($results)) {
      foreach($results as $row) {
        $id = get_the_ID();
        $author = empty($row['author']) ? 'Visitor' : get_the_author_meta('display_name', $row['author']);
        $content = empty($row['content']) ? '-' : $row['content'];
        $date = empty($row['date']) ? '-' : $row['date'];
        $action = empty($row['action']) ? '-' : $row['action'];
        $object_type = empty($row['object_type']) ? '-' : $row['object_type'];
        $local_ip = empty($row['local_ip']) ? '-' : $row['local_ip'];
        $network_ip = empty($row['network_ip']) ? '-' : '<a href="http://iplocation.com/?ip=' . $row['network_ip'] . '">' . $row['network_ip'] . '</a>';

        $html .= '<div class="wpui-row wpui-row-box list-of-logs">
          <div class="wpui-col-md-2">
            <div class="list-of-log-time"><p class="my-0">' . $date . '</p></div>
          </div>
          <div class="wpui-col-md-1">
            <p class="my-0">' . $local_ip . '</p>
          </div>
          <div class="wpui-col-md-1">
            <p class="my-0">' . $network_ip . '</p>
          </div>
          <div class="wpui-col-md-2">
            <p class="my-0">' . $action . '</p>
          </div>
          <div class="wpui-col-md-1">
            <p class="my-0">' . $author . '</p>
          </div>
          <div class="wpui-col-md-5">
            <p class="my-0">' . $content . '</p>
          </div>
        </div>';
      }
    } else {
      $html .= '<div class="wpui-row wpui-row-box list-of-logs">
        <div class="wpui-col-md-12">
          <p>No data found related to type and search.</p>
        </div>
      </div>';
    }

    return $html;
  }

  /**
   * Creates a new object in the store.
   * The object is a plaintext JSON document.
   * @param bool $storeData
   * @return bool|void
   * @throws Exception
   */
  public function insert($storeData = false)
  {
    // Handle invalid data
    if (! $storeData OR empty($storeData)) {
      throw new Exception('No data found to store');
    }

    // Make sure that the data is an array
    if ( ! is_array( $storeData ) ) {
      throw new Exception('Storable data must an array');
    }

    $this->writeInStore($storeData);

    return true;
  }
}
