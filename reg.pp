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