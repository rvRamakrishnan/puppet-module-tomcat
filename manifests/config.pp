class tomcat::config inherits tomcat {


    file { $conf_file:
            ensure => file,
            owner => $user,
            group => $group,
            mode => $::tomcat::conf_file_mode,
            content => template('tomcat/tomcat.conf.erb'),
            notify => Service[$service_name],
    }
}





