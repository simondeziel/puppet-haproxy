#
# Class: haproxy
#
# @summary
#   Configure haproxy
#
class haproxy (
  String $config_content,
) {
  contain haproxy::install
  contain haproxy::config
  contain haproxy::service

  Class['haproxy::install']
  -> Class['haproxy::config']
  ~> Class['haproxy::service']
}
