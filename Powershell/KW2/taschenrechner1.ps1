function Plus {
    [int]$idkPlus = 0
    [int]$result = 0
    [int]$fin = 0
    [int]$temp = 0

    Write-Output "enter a number: "
    $result = Read-Host 

    do{ 
    
    $temp = Read-Host 
    $result = ($result + $temp)
    Write-Output "Do you want to add another number? y for yes and n for no"
    $answer = Read-Host
    if($answer -eq "n"){
        $idkPlus++         
    }
    
    else{
        $idkPlus = 0 
    }        

}while ($idkPlus -eq 0)
[string]$fin = "the result is: $result"

return [string]$result
}




Write-Output "Choose an option: + , - , * , /"
$option = Read-Host

switch ($option){
    +{Plus}
    -{minus}
    *{Multiplikation}
    /{Division}

}

function minus {
    [int]$idkMinus = 0
    [int]$result = 0
    [int]$fin = 0
    [int]$temp = 0

    Write-Output "enter a number: "
    $result = Read-Host 

    do{ 
    
    $temp = Read-Host 
    $result = ($result - $temp)
    Write-Output "Do you want to add another number? y for yes and n for no"
    $answer = Read-Host
    if($answer -eq "n"){
        $idkMinus++         
    }
    
    else{
        $idkMinus = 0 
    }        

}while ($idkMinus -eq 0)
[string]$fin = "the result is: $result"

return [string]$result
}




Write-Output "Choose an option: + , - , * , /"
$option = Read-Host

switch ($option){
    +{Plus}
    -{minus}
    *{Multiplikation}
    /{Division}

}

function Multiplikation {
    [int]$idkMal = 0
    [int]$result = 0
    [int]$fin = 0
    [int]$temp = 0

    Write-Output "enter a number: "
    $result = Read-Host 

    do{ 
    
    $temp = Read-Host 
    $result = ($result * $temp)
    Write-Output "Do you want to add another number? y for yes and n for no"
    $answer = Read-Host
    if($answer -eq "n"){
        $idkMal++         
    }
    
    else{
        $idkMal = 0 
    }        

}while ($idkMal -eq 0)
[string]$fin = "the result is: $result"

return [string]$result
}




Write-Output "Choose an option: + , - , * , /"
$option = Read-Host

switch ($option){
    +{Plus}
    -{minus}
    *{Multiplikation}
    /{Division}

}

function Division {
    [float]$idkDurch = 0
    [float]$result = 0
    [float]$fin = 0
    [float]$temp = 0

    Write-Output "enter a number: "
    $result = Read-Host 

    do{ 
    
    $temp = Read-Host 
    $result = ($result / $temp)
    Write-Output "Do you want to add another number? y for yes and n for no"
    $answer = Read-Host
    if($answer -eq "n"){
        $idkDurch++         
    }
    
    else{
        $idkDurch = 0 
    }        

}while ($idkDurch -eq 0)
[string]$fin = "the result is: $result"

return [string]$fin
}




Write-Output "Choose an option: + , - , * , /"
$option = Read-Host

switch ($option){
    +{Plus}
    -{minus}
    *{Multiplikation}
    /{Division}

}



    
