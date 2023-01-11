# ---C/Java like tasks---
# Wie erstelle ich eine neue Variable?
# Wie erstelle ich ein Array?
# Wie erstelle ich ein Mehrdimensionales Array?
# Wie funktionieren bekannte Kontrollstrukturen? (If/Else, Switch, While, DoWhile, For, ForEach)
# Wie vergleiche ich Dinge -> Operators (AND, OR, NOT, ==, <, >, <=, >=)

# ---Bash like tasks---
# Display the current date and time
# Display a list of all the files in the current directory
# Display a list of all the files in a specific directory
# Display the contents of a file
# Create a new folder
# Create a new file
# Copy a file to a different location
# Rename a file
# Delete a file
# Create a new text file and append some text to it

$test = 2

$data = @('0', '1', '2')
Write-Output $test
write-host $myArray [2]

$my2DArray = @( (1,2,3)
                (1,2,3)
                (1,2,3)

write-host $my2DArray[1][1]            

if($test){
    echo "Wert von Test: " $test
    }
	else{
   echo "Wert von Test ist null oder undefiniert"
   }

   switch (3)
{
    1 {"It is one."}
    2 {"It is two."}
    3 {"It is three."}
    4 {"It is four."}
}

while(condition)
{
    code
}

do {
 
    code
     
    }
     
    while ()

    for($i = 0; $i -lt 10; $i++){
        #code
    }

    1 -lt 2 -> gt= grösser


  
Get-date

Get-Childitem #ls, dir

Get-ChildItem -Path ""

$datei = Get-content -Path C:\

New-Item -Path 'C:\\FortniteBattlePass' -ItemType Directory

New-Item -Path 'C:\FortniteBattlePass\Skybase.txt' -ItemType File

Copy "C:\FortniteBattlePass\files\Skybase" "c:\random"

Rename-Item -Path "c:\FortniteBattlePass\Skybase.txt" -NewName "nice file"

Remove-Item -Path "C:\FortniteBattlePass\nice file"


Add-Content -Path 'C:\FortniteBattlePass\Skybase.txt' -Value 'End of file'
