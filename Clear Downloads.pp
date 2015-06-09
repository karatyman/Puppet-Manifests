#Puppet Freeze#
file { "C:\Puppet\ ":
  
  ensure   => directory,
  recurse  => true,
  purge    => true,
  force    => true,
} 


file { "C:\Puppet\Downloads ":
  
  ensure   => directory,
  recurse  => true,
  purge    => true,
  force    => true,
} 

 file { 'C:\Users\ENTERuserNAMEhere\Downloads':
  ensure   => 'present',
  source   => 'C:\Puppet\Downloads',
  recurse  => 'true',
  purge    => 'true',
  force    => 'true',

} 

### This manifest creates empty repositories in the C: Drive for puppt. Puppet will then make sure that the Downloads directory matches the fake Downloads directory in the C: This process empties out the downloads folder
