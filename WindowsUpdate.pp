service { 'wuauserv':
#Windows Update Service
ensure => stopped,
enable => false,

}


#This puppet module disables The windows update service
#Requried
#puppet module install jriviere-windows_services