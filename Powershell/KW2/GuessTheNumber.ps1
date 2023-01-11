

    Clear-Host
   
    [int]$random100 = Get-Random -Minimum 1 -Maximum 101
   
    Write-Host "Try and guess my number between 1 and 100"
   
    while ($input100 -ne $random100){
     Write-Host "enter your guess below`n"
     $input100 = [int] (Read-Host)
   
     $option1 = if ($input100 -gt $random100) {Write-Host "$input100 was too high`n"}
     $option2 = if ($input100 -lt $random100) {Write-Host "$input100 was too low`n"}
     $option3 = if ($input100 -gt [int](100) -or $input -lt [int](0)) {Write-Host 'between 1 and 100!`n'}
   
    } Write-Host "Correct! the number was $input100"
   