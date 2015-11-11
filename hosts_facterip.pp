host { 'puppet':
#  namevar      => $facts['domain'],
  ensure       => 'present',
  host_aliases => ['puppet'],
  ip           => $facts['ipaddress'],
  target       => '/etc/hosts',
}
