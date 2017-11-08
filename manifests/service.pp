class tomcat::service inherits tomcat {

    service { $service_name:
    
        ensure => $service_state,
        enable => $service_enable,
        require => Package[$service_name],
        subscribe => File[$conf_file],
    }

}