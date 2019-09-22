# @summary
#   This class services.
#
# @api private
class haproxy::service {
  if $haproxy::service_manage {
    service { 'haproxy':
      ensure     => $haproxy::service_ensure,
      enable     => $haproxy::service_enable,
      hasstatus  => true,
      hasrestart => true,
    }
  }
}
