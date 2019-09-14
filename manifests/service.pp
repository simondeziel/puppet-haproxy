# @summary
#   This class services.
#
# @api private
class haproxy::service {
  service { 'haproxy':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
