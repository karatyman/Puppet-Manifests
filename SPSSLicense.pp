exec { 'SPSS-License':
  command   => '& ("C:\Program Files\IBM\SPSS\Statistics\22\licenseactivator.exe") LICENSE-key-HERE',
  provider  => powershell,
}

#REQUIRES POWERSHELL MODULE


#this is a simple puppet maniest that licenses the SPSS software (You must have your own license key...)
#Required
#puppet module install joshcooper-powershell
