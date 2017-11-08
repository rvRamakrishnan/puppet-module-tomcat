class tomcat::params {

    $user = "tomcat"
    $group = "tomcat"
    $conf_file = "/etc/tomcat/tomcat.conf"
    $conf_file_mode = "0644"
    $conf_file_source = "puppet:///modules/tomcat/tomcat.conf"
    $packages = [ 'tomcat', 'tomcat-webapps' ]
    $service_name = "tomcat"
    $service_state = "running"
    $service_enable = true
    $tomcat_cfg_loaded = "1"
    $java_home = "/usr/lib/jvm/jre"
    $xms = "64m"
    $xmx = "128m"
    $maxpermsize = "128M"
    $catalina_base = "/usr/share/tomcat"
    $catalina_home = "/usr/share/tomcat"
    $jasper_home = "/usr/share/tomcat"
    $catalina_tmp_dir = "/var/cache/tomcat/temp"
    $security_manager = "false"
    $shutdown_wait = "30"
    $shutdown_verbose = "false"
    $catalina_pid = "/var/run/tomcat.pid"
    $deploy_path = "/var/lib/tomcat/webapps"
}