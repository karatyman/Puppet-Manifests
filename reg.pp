#MSconfigurator
#This Manifest defines registry values and makes them real. If a registry value is not defined then it is not real, and will be 
#exterminated. Doing so keeps prevents Unwanted programs from comming up at startup, keeping the msconfig Clean.

#The following programs are allowed at startup: Alertus, Rainmeter (all other msconfig entries will be deleted)

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
