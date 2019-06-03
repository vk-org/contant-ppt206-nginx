class nginx (
  String $install_name,
  String $install_ensure,
  String $config_path,
  String $config_ensure,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
  String $vhosts_root,
  String $vhosts_owner,
  String $vhosts_group,
) {
  contain nginx::install
  contain nginx::config
  contain nginx::service

  Class['::nginx::install']
  -> Class['::nginx::config']
  ~> Class['::nginx::service']
}

