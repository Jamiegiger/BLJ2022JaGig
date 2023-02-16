
# to do: keine Buchstaben, keine Zahlen zweimal

$board = @(' ', ' ', ' ',
           ' ', ' ', ' ',    
           ' ', ' ', ' ')

function Printboard {
    Write-Host "`n" "|"$board[0]"|" $board[1]"|" $board[2]"|" "`n" "|"$board[3]"|" $board[4]"|" $board[5] "|" "`n" "|"$board[6]"|"  $board[7]"|" $board[8]"|"  
    
}
function checkX {
    
   
    if ($board[0] -eq "x" -and $board[1] -eq "x" -and $board[2] -eq "x"){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[3] -eq "x" -and $board[4] -eq "x" -and $board[5] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[6] -eq "x" -and $board[7] -eq "x" -and $board[8] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[0] -eq "x" -and $board[3] -eq "x" -and $board[6] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[1] -eq "x" -and $board[4] -eq "x" -and $board[7] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[2] -eq "x" -and $board[5] -eq "x" -and $board[8] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[0] -eq "x" -and $board[4] -eq "x" -and $board[8] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    if ($board[2] -eq "x" -and $board[4] -eq "x" -and $board[6] -eq "x" ){
        Write-Host "You are the winner! (x)"
        return $true
    }
    else {
        return $false
    }
}
    
    
function check0 {
        
    if ($board[0] -eq "0" -and $board[1] -eq "0" -and $board[2] -eq "0"){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[3] -eq "0" -and $board[4] -eq "0" -and $board[5] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[6] -eq "0" -and $board[7] -eq "0" -and $board[8] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[0] -eq "0" -and $board[3] -eq "0" -and $board[6] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[1] -eq "0" -and $board[4] -eq "0" -and $board[7] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[2] -eq "0" -and $board[5] -eq "0" -and $board[8] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[0] -eq "0" -and $board[4] -eq "0" -and $board[8] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    if ($board[2] -eq "0" -and $board[4] -eq "0" -and $board[6] -eq "0" ){
        Write-Host "You are the winner! (0)"
        return $true
    }
    else {
        return $false
    }
}   

function playgame {
    for ($i = 0; $i -lt 5; $i++) { # i = wiederholung bis jetzt
        
   
 

    [int]$index = Read-Host "Where do you want to put your X?"
    $board[$index] = "x"
    $result = checkX 
    
    Printboard
    
    [int]$index = Read-Host "Where do you want to put your 0?"
    $board[$index] = "0"  
    $result = check0

    Printboard
    
    }
    
}


playgame


