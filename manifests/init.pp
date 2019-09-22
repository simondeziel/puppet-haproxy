#
# Class: haproxy
#
# @summary
#   Configure haproxy
#
class haproxy (
  String                    $config_content,
  Boolean                   $service_manage = true,
  Enum['running','stopped'] $service_ensure = 'running',
  Boolean                   $service_enable = true,
) {
  contain haproxy::install
  contain haproxy::config
  contain haproxy::service

  Class['haproxy::install']
  -> Class['haproxy::config']
  ~> Class['haproxy::service']
}
