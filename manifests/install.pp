# @summary Installs Nginx
class nginx::install {
  package { "${nginx::install_name}":
    ensure => $nginx::install_ensure,
  }
}
