# @summary
#   This class install packages.
#
# @api private
#
class haproxy::install {
  package { 'haproxy':
    ensure => installed,
  }
}
