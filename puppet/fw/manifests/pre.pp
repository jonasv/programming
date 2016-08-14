class fw::pre {

  Firewall {
    require => undef,
  }
  # Default firewall rules
  firewall { '000 accept all icmp':
    proto  => 'icmp',
    action => 'accept',
  }->
  firewall { '001 accept all to lo interface':
    proto   => 'all',
    iniface => 'lo',
    action  => 'accept',
  }->
  firewall { '003 accept related established rules':
    proto  => 'all',
    state  => ['RELATED', 'ESTABLISHED'],
    action => 'accept',
  }
  firewall { '004 accept ssh':
    proto => 'tcp',
    destination => $facts['ipaddress'], #this will work too destination => "$::ipaddress"
    dport  => '22',
    action => 'accept',
  }
  
  firewall { "65535 drop incoming packets": #it always should be latest
    action => 'drop'
  }
}
