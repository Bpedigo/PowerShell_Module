#                                      This module is by Brian Pedigo
#                                            Made Dec 2013
#                                  Website refence for powershell modules
#                       https://www.simple-talk.com/sysadmin/powershell/an-introduction-to-powershell-modules/
#                             to use this Module: PS>> Import-Module BTPDSL -PassThru
#                  to list all available modules: PS>> Get-Module -ListAvailable
#             to see functions are available to us in this PowerShell session, by using the Get-Command cmdlet
#                                               : PS>> Get-Command -Module BTPDSL


#globals
$script:file = "C:\Users\control\Documents\text files\history.txt"

#end of globals


function mod {
start "C:\Users\control\Documents\WindowsPowerShell\Modules\BTPDSL\BTPDSL.psm1"
}

function pandora {
start http://www.pandora.com/
}

#         function addes two numbers together
#         Use at the command line: PS>Add-Numbers 3 4 
Function Add-Numbers ($x, $y){
$z = $x +$y
Write-host "$x + $y = $z"
}

#         this neat function is used in a neat Ruby Style
#         Use at the command line: PS> repeat 3 {"Hello World"}
#         results is Hello World X3
function repeat {
param(
[int]$HowManyTimes,
[scriptblock]$block
)
1..$HowManyTimes | foreach { & $block }
}


#         THis neat filter islike repeat but a filter version
#         Use at the command line: PS> 4 | times {"Hello World"}
#         results Hello World X4
filter times ([Scriptblock]$block){
1..$_ | ForEach { & $block}
}

#         This neat function will make the computer speak
#         use at the command line: PS> speak {"Hello World"}
function speak{
param(
[scriptblock]$blocks
)
$hal = new-Object -ComObject Sapi.SpVoice
$hal.Speak($blocks)
}

function grep{
stringIWant = $args
$currentDirectory = Get-Childitem
echo 'looked for your string:'
Select-String -Pattern $stringIWant $currentDirectory
}

function Dir_Stat{

function number-of-files {
  Write-Host "counting number of files in working directory:"
  gci -recurse | measure-object
}


function lines-of-ps {
  Write-Host "counting lines of PowerShell code in working directory and child directories:"
  gci -recurse ./*.ps1 | get-content | Measure-Object -Line
}


function lines-of-py {
  Write-Host "counting lines of Python code in working directory and child directories:"
  gci -recurse ./*.py | get-content | Measure-Object -Line
}


function lines-of-rb {
  Write-Host "counting lines of Ruby code in working directory and child directories:"
  gci -recurse ./*.rb | get-content | Measure-Object -Line
}

function lines-of-C++ {
  write-host "counting lines of C++ code in the working directory and child directories:"
  gci -recurse ./*.cpp | get-content | Measure-Object -Line
}  


function dir-stat-usage {
  Write-Host "Usage:dir-stat with argument 'py', 'ps1','rb','cpp' to Python/PowerShell/Ruby/C++ in pwd."
}


function yellow-line {
write-Host "---------------------------------------------------------" -ForegroundColor Yellow
}


function green-line {
write-Host "---------------------------------------------------------" -ForegroundColor Green
}


##< defs above >##
##< script below >##


$flag = $args[0]


yellow-line
number-of-files
yellow-line
green-line
switch ($flag) {
 'ps' { lines-of-ps }
 'py' { lines-of-py }
 'rb' { lines-of-rb }
 'cpp'{ lines-of-c++ }
 'h'  {dir-stat-usage}
}
green-line
}


function log_history{
 get-date >> $file
get-history >> $file
write-host "history dump done"
}

function view_history{
ii $file
}


function google {
$query = $args[0]
$ie = New-Object -comobject InternetExplorer.Application
$ie.Navigate2("https://www.google.com/search?q=$query")
$ie.visible= $true
}

function ps_info{
$y = $PSversionTable
$x = get-executionpolicy 
Clear-host
Write-host "================================================"
Write-host "PS version is listed and .Net frame work as well"
$y
Write-host "`nthe scripting level is set to: $x"
Write-host "================================================"
read-host
clear-host
}

filter obj_Veiw {
$input | get-member | out-gridview
}

filter methods{
$input | get-member -membertype method | out-gridview
}