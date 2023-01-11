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


    
