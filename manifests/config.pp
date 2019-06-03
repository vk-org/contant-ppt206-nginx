# @summary Manages the Nginx config
class nginx::config {
  file { "${nginx::config_path}":
    source => "puppet:///modules/nginx/${osfamily}.conf",
    ensure => $nginx::config_ensure,
  }
}
