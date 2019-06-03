# @summary Manages server ("virtual hosts") configuration
define nginx::vhosts (
  Integer   $port,
  String[1] $servername,
) {
  file { "/var/www/${servername}":
    ensure => 'directory',
    owner  => $nginx::vhosts_owner,
    group  => $nginx::vhosts_group,
  }
  file { "${nginx::vhosts_root}/${servername}.conf":
    ensure  => 'file',
    owner   => $nginx::vhosts_owner,
    group   => $nginx::vhosts_group,
    content => epp('nginx/vhosts.conf.epp', {'port' => $port, 'servername' => $servername}),
    notify  => Service["${nginx::service_name}"],
  }
}
