registry_key { 'HKLM\Software\Microsoft\Windows\CurrentVersion\policies\system':
  ensure => present,
}


registry_value { 'HKLM\Software\Microsoft\Windows\CurrentVersion\policies\system\EnableLUA':
  ensure => present,
  type   => string,
  data   => "0",
  }

#This puppet manifest is my personal favorite because as a Windows Admin, I hate UAC with a burning passion... This manifest disables UAC :D\
#required
#puppet module install puppetlabs-registry