# @summary Manages the Nginx service
class nginx::service {
  service { "${nginx::service_name}":
    ensure     => $nginx::service_ensure,
    enable     => $nginx::service_enable,
    hasrestart => true,
  }
}
