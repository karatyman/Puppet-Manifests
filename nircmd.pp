
exec { 'Nircmd Download':
  # Note--- Puppet cannot read \\ and // on the same line. If you notice The Http uses / while typically windows would use \, it instead must use / for puppet to read it... (he can be so picky)
  command   => "(Invoke-WebRequest 'http://nirsoft.net/utils/nircmd-x64.zip' -OutFile 'C:/windows/nircmd.zip')",
  creates	=> 'C:\Windows\nircmd.zip',
  provider  => powershell,
}

windows::unzip { 'C:\Windows\nircmd.zip':
  destination => 'C:\Windows',
  creates     => 'C:\Windows\nircmd.exe',
}

#This manifest is more of a test to see how we can manage "packages" without chocolatey.
#What this is does is uses Powershell to download the Nircmd Zip file, then "Create" it. If the Nircmd zip exists then it will not re-run the command. (therefore Create eliminates a Test-Path if statement)
#The Windows unzip command will then unzip the contents of the zip, and place them in the directory of our choice (again using the create command to prevent Unnecessary downloading)


#This is great for software that does not need to be updated often, and a nuget package is not present. 
 
#Modules required: counsyl/sys, puppetlabs/stdlib,counsyl-windows, puppetlabs/powershell, puppetlabs/registry
