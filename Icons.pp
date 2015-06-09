
file { 'C:/Users/Public/Desktop' :
  
  ensure   => directory,
  source   => 'C:/Puppet/Icons',
  recurse  => 'true',
  purge    => 'true',
  force    => 'true',
  source_permissions => ignore,

} 

exec { 'Clear Desktop':
  command   => 'Remove-Item C:\Users\~~InSeRtUsErNaMeHeRe~~\Desktop\* -force -recurse',
  provider  => powershell,
}



#Remove-Item C:\Users\Podium-User\Desktop\*

#This manifest works by placing Desktop icons found in the C:\Puppet\Icons and places them in the Public desktop folder, leveraging the Shortcut .
#The module will then delete all files on the specified users desktop. Since the icons were placed on the Public desktop, there is no conflict. 
# Change the source from C:/Puppet/Icons to the file share containing your shortcuts. 

#Requires 
#puppet module install puppetlabs-win_desktop_shortcut 