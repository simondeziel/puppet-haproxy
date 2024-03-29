# @summary
#   This class handles configs.
#
# @api private
class haproxy::config {
  file { '/etc/haproxy/haproxy.cfg':
    content      => $haproxy::config_content,
    validate_cmd => '/usr/sbin/haproxy -c -f %',
  }
}
