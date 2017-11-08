define tomcat::deploy(
    $deploy_path = $::tomcat::params::deploy_path,
    $deploy_url,
    #$checksum = "md5",
    #$checksum_value,
) {

    notify { "in sysfoo deploy": }
    
    file {"${deploy_path}/${name}.war":
            owner => $::tomcat::user,
            group => $::tomcat::params::group,
            source => $deploy_url,
            #checksum => $checksum,
            #checksum_value => $checksum_value,
            notify => Exec['purge_context']
    
    }
    
    exec { "purge_context":
            path => ["/bin","/usr/bin","/usr/sbin"],
            refreshonly => true,
            command => "rm -f -r ${deploy_path}/${name}",
            notify => Service[$::tomcat::service_name],
    
    }

}