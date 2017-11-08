
class tomcat(

    $user                   = $::tomcat::params::user,
    $group                  = $::tomcat::params::group,
    $conf_file              = $::tomcat::params::conf_file,
    $conf_file_mode         = $::tomcat::params::conf_file_mode,
    $conf_file_source       = $::tomcat::params::conf_file_source,
    $packages               = $::tomcat::params::packages,
    $service_name           = $::tomcat::params::service_name,
    $service_state          = $::tomcat::params::service_state,
    $service_enable         = $::tomcat::params::service_enable,
    $tomcat_cfg_loaded      = $::tomcat::params::tomcat_cfg_loaded,
    $java_home              = $::tomcat::params::java_home,
    $xms                    = $::tomcat::params::xms,
    $xmx                    = $::tomcat::params::xmx,
    $maxpermsize            = $::tomcat::params::maxpermsize,
    $catalina_base          = $::tomcat::params::catalina_base,
    $catalina_home          = $::tomcat::params::catalina_home,
    $jasper_home            = $::tomcat::params::jasper_home,
    $catalina_tmp_dir       = $::tomcat::params::catalina_tmp_dir,
    $security_manager       = $::tomcat::params::security_manager,
    $shutdown_wait          = $::tomcat::params::shutdown_wait,
    $shutdown_verbose       = $::tomcat::params::shutdown_verbose,
    $catalina_pid           = $::tomcat::params::catalina_pid,



) inherits tomcat::params {

    notify { 'Checkpoint_Init': }

    include java::install
    include tomcat::install
    include tomcat::service
    include tomcat::config

}
