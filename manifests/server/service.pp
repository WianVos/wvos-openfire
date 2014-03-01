# this is a private class .. do not call this class directly
class openfire::service{

  service{'openfire':
    ensure => running,
  }

}