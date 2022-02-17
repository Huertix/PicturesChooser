$_SourcePath = "D:\BLOG\Power Shell\Examples\Source File Path"
$_DestinationPath = "D:\BLOG\Power Shell\Examples\Destination File Path"
$_list = ".\list.txt"

foreach($line in Get-Content $_list) {
    if($line -match $regex){
        # Work here
    }

    if (Test-Path -Path $_SourcePath + $line  -PathType Leaf) {
    	Move-item –path $_SourcePath + $line –destination $_DestinationPath + $line
    }
}
 
