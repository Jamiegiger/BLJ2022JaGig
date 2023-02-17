# Retrieve a list of all the members (methods and properties) of the Get-ChildItem cmdlet.
# Use Get-ChildItem to retrieve a list of the files in the current directory and the Get-Member cmdlet to retrieve a list of all the members
Get-ChildItem -File | Get-Member

# Retrieve a list of all the files in the current directory and then sort them ascending by size. 
# Use the Get-ChildItem cmdlet to retrieve the list of files and the Sort-Object cmdlet to sort them by size.
Get-ChildItem -File | Sort-Object -Property Length

# Retrieve a list of all the processes currently running on the computer and then select the processes that have a high CPU usage (>50%). 
# Use the Get-Process cmdlet to retrieve the list of processes and the Where-Object cmdlet to select only the processes with a high CPU usage.
Get-Process | Where-Object CPU -gt 50.00

# Retrieve a list of all the services and select only the processes which are running. Display only the service name and the service description.
# Use the Get-Service cmdlet to retrieve a list of all services, the Where-Object cmdlet to select running processes and the Select-Object cmdlet to display  the service name and the service description.
Get-Service | Where-Object Status -EQ Running | Select-Object Name,description


# Retrieve a list of all the processes on the computer and then stop the processes that contain "Team" in the name. 

Get-Process | Where-Object Name -Like "*Team*" | stop-Process

# Retrieve a list of all the local users username and last logon time and sort them by their last logon time. Don't list users, which have never logged on.

Get-LocalUser |Where-Object -Property passwordLastSet| Select-Object name,passwordlastset | Sort-Object -Property passwordlastset -Descending

# Retrieve a list of all the files in the current directory and then select the files that have been modified in the past week. Sort them by their modification date.
Get-ChildItem -Path . -File | Where-Object { $_.LastWriteTime -ge (Get-Date).AddDays(-7) } | Sort-Object LastWriteTime

 
# Prepare the following directory structure.
0..10 | ForEach-Object {New-Item -path C:\Pipeline2 -ItemType Directory -Name Folder$_}
0..10 | ForEach-Object {New-Item  -path C:\Pipeline2 -ItemType File -Name File$_}
0..10 | ForEach-Object {New-Item -path C:\Pipeline2\Folder$_ -ItemType File -Name SampleFile.txt}
0..10 | ForEach-Object {
$cont1 = Get-Location
Add-Content -Path C:\Pipeline2\Folder$_\SampleFile.txt -Value $cont1\Folder$_
}
<# 
    Mode                 LastWriteTime         Length Name
    ----                 -------------         ------ ----
    d-----        03.02.2023     09:13                Folder0
    d-----        03.02.2023     09:13                Folder1
    d-----        03.02.2023     09:13                Folder10
    d-----        03.02.2023     09:13                Folder2
    d-----        03.02.2023     09:13                Folder3
    d-----        03.02.2023     09:13                Folder4
    d-----        03.02.2023     09:13                Folder5
    d-----        03.02.2023     09:13                Folder6
    d-----        03.02.2023     09:13                Folder7
    d-----        03.02.2023     09:13                Folder8
    d-----        03.02.2023     09:13                Folder9
    -a----        03.02.2023     09:13             14 File0
    -a----        03.02.2023     09:13             14 File1
    -a----        03.02.2023     09:13             15 File10
    -a----        03.02.2023     09:13             14 File2
    -a----        03.02.2023     09:13             14 File3
    -a----        03.02.2023     09:13             14 File4
    -a----        03.02.2023     09:13             14 File5
    -a----        03.02.2023     09:13             14 File6
    -a----        03.02.2023     09:13             14 File7
    -a----        03.02.2023     09:13             14 File8
    -a----        03.02.2023     09:13             14 File9 #>

<# Add a new textfile called SampleFile.txt inside of each folder. SampleFile.txt should contain the path to its parent directory.
     Example:
    Get-Content .\Folder0\SampleFile.txt
    C:\Users\robin.meier\demo\Ordner0\
    

    
    
Use the Get-ChildItem cmdlet to retrieve a list of all the Folders and Files, the Where-Object cmdlet to filter for the directories and the ForEach-Object cmdlet to add a file to each folder.#>
Get-ChildItem -Path . -Directory -Recurse | ForEach-Object { Set-Content -Path "$($_.FullName)/SampleFile.txt" -Value $_.FullName }









