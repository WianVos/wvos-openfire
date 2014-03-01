# class openfire::server
# installs an openfire server
#
# parameters
# [*of_version*]
#  The version of openfire to install
#
# [*of_prereq_packages*]
#  prerequisite packages for openfire to install
#  before the installation of the actual package
#
class openfire::server(
  $of_version         = $of_version::params::of_version,
  $of_prereq_packages = $of_version::params::of_prereq_packages,
) inherits openfire::params {

  # flow control
  anchor{'openfire::server::begin':}
   -> class{'openfire::server::install':}
   -> class{'openfire::server::config':}
   ~> class{'openfire::server::service':}
  -> anchor{'openfire::server::end':}
}