#MSconfigurator


#The following programs are allowed at startup:  Rainmeter (and all other msconfig entries not in the specified registry keys)

registry_key {'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run':
	ensure => present,
	purge_values => True
	
}
registry_key {'HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run':
	ensure => present,
	purge_values => True
	
}

registry_value {'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Rainmeter':
	ensure => present,
	type => string,
	data => "C:\Program Files\Rainmeter\Rainmeter.exe",
}


#This Manifest defines registry values and makes them real. If a registry value is not defined then it is not real, and will be 
#exterminated. Doing so keeps prevents Unwanted programs from comming up at startup, keeping the msconfig Clean.
#To keep certain options in the MSconfig define them like I did for rain meter. Ensure => present basically says "Keep this alive" while the purge values at the top says "Kill everything that is not ensured"

#Required
#puppet module install puppetlabs-registry