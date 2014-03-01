# do not use this class directly
class openfire::server::install{
  $of_version         = $openfire::server::of_version
  $of_prereq_packages = $openfire::server::of_prereq_packages

  # flow
  Package[$of_prereq_packages]
  -> Package['Openfire']


# resources
  package{$of_prereq_packages:
    ensure => present
  }

  package{'openfire':
    ensure  => present
    version => $of_version,
  }

}