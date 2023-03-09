# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include webforce::exercice1
class webforce::exercice1 {
  file { '/tmp/hello':
    ensure  => file,
    content => 'Hello World',
    path    => '/tmp/hello',
  }
}
