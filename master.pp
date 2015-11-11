Package {
  allow_virtual => true,
}
#include ::apt

#class { '::apt::source':

class { '::puppet::profile::agent':
  allinone   => true,
  collection => 'PC1'
}

#include ::epel
#Yumrepo<| |> -> Package <| |>
#include '::puppet::profile::agent' 
#include '::puppet::master'
include '::puppet::profile::master' 
include '::puppet::profile::puppetdb' 
#include '::puppetdb'
#class { '::puppet::profile:puppetdb':
#   confdir   => '/etc/puppetlabs/puppetdb/conf.d',
#}
#include '::puppet::profile::puppetboard' 
#include '::puppet::profile::r10k'

#class { '::puppet::master':
#  storeconfigs => true,
#  environments => directory,
#}


