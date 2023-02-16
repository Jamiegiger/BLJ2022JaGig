$TP = "c:\TestingPurpose"
$Subfolder1 = "C:\TestingPurpose\Subfolder1"
$Subfolder2 = "C:\TestingPurpose\Subfolder2"
$masterfile = "C:\TestingPurpose\masterfile.txt"


New-Item -Path "c:\" -Name "TestingPurpose" -ItemType "directory"  


New-Item -Path $TP -Name "Subfolder1" -ItemType "directory"
New-Item -Path $TP -Name "Subfolder2" -ItemType "directory"



for ($i = 1; $i -lt 51; $i++) 
{   
     New-Item $Subfolder1 -Name "TypeATest$i.txt" -ItemType File
    }


for ($i = 51; $i -lt 101; $i++) 
{   
     New-Item $Subfolder2 -Name "TypeBTest$i.txt" -ItemType File
    }

    $files = Get-ChildItem $Subfolder1
    for ($i = 0; $i -lt $files.Count; $i++) {  
     $suui= $files.name[$i].TrimStart("TypeATest").TrimEnd(".txt")  
     
     $suui2 = $suui
     
     if($suui % 2 -ne 0){
           Move-Item "$subfolder1\TypeATest$suui2.txt" -Destination $Subfolder2
          
     }
}


    $files = Get-ChildItem $Subfolder2
    for ($i = 0; $i -lt $files.Count; $i++) {  
     $suui= $files.name[$i].TrimStart("TypeBTest").TrimEnd(".txt")  
     

     $suui2 = $suui
     
     if($suui % 2 -ne 1){
           Move-Item "$Subfolder2\TypeBTest$suui2.txt" -Destination $Subfolder1
          
     }
}
Rename-Item -Path $Subfolder1 -NewName "EvenFilesContainer"
Rename-Item -Path $Subfolder2 -NewName "OddFilesContainer"


$now = Get-Date 
$changeTime = $now.ToString("yyyy/MM/dd, HH:mm")
$header = "As of $changeTime, the following files are in TestingPurpose:`n`n"
$header | Out-File -Append $masterfile


$cont1 = Get-ChildItem -Path C:\TestingPurpose\EvenFilesContainer
Add-Content -Path $masterfile -Value $cont1
$cont2 = Get-ChildItem -Path C:\TestingPurpose\OddFilesContainer
Add-Content -Path $masterfile -Value $cont2

foreach ($goat in $cont1.FullName) 
{      
if ($goat.Contains("TypeA")) {          
Remove-Item $goat}  }


foreach ($goat2 in $cont2.FullName) 
{      
if ($goat2.Contains("TypeA")) {          
Remove-Item $goat2}  }









        