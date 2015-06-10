exec{ 'Cclean' :
	command   => '&("C:\Program Files\CCleaner\CCleaner64.exe") /auto',
	provider  => powershell,
}


#This is a simple manifest that will run CCleaner silently. To get more fancy you could ensure CCLeaner is installed and updated with chocolatey first, then run this powershell command.
#Required
#puppet module install joshcooper-powershell