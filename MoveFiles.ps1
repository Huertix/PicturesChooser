$_SourcePath = "C:\Users\tom\Desktop\test1"
$_DestinationPath = "C:\Users\tom\Desktop\test2"
$_list = "C:\Users\tom\Desktop\lista.txt"

foreach($line in Get-Content $_list) {
    #Write-Output -InputObject  (Test-Path -Path $_SourcePath+"\"+$line  -PathType Leaf)
    #Write-Output -InputObject $_SourcePath\$line
    if (Test-Path -Path $_SourcePath\$line  -PathType Leaf) {
        Write-Output -InputObject "Moving....."
        Write-Output -InputObject $_SourcePath\$line
    	Move-item –path $_SourcePath\$line –destination $_DestinationPath\$line
    }
}
