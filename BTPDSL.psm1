#                                      This module is by Brian Pedigo
#                                            Made Dec 2013
#                                A good Website refence for powershell modules is:
#                       https://www.simple-talk.com/sysadmin/powershell/an-introduction-to-powershell-modules/
#                             to use this Module: PS>> Import-Module BTPDSL -PassThru
#                  to list all available modules: PS>> Get-Module -ListAvailable
#             to see functions are available to us in this PowerShell session, by using the Get-Command cmdlet

#Hard coding for some path for the log_history functions please addjust yours to match your boxs directorys
$script:file = "C:\Users\control\Documents\text files\history.txt"




#    1.)
#    
function pandora {
start http://www.pandora.com/
}
#    2.)
#
Function Add {
Foreach( $i in $args){
$b = $b+$i
write-host "$b"
}
}
#   3.)
#
function repeat {
param(
[int]$HowManyTimes,
[scriptblock]$block
)
1..$HowManyTimes | foreach { & $block }
}
#   4.)
#
filter times ([Scriptblock]$block){
1..$_ | ForEach { & $block}
}
#   5.)
#
function speak{
param(
[scriptblock]$blocks
)
$hal = new-Object -ComObject Sapi.SpVoice
$hal.Speak($blocks)
}
#  6.)
#
function grep{
stringIWant = $args
$currentDirectory = Get-Childitem
echo 'looked for your string:'
Select-String -Pattern $stringIWant $currentDirectory
}
#  7.)
#
function bir{

function counter
{

    BEGIN { $x = 0 }

    PROCESS { $x += 1 }

    END { $x }
}

function display {
$total = dir $dir | counter
write-host "`n"
write-host "==============================================================="

write-host "total number of files in pwd" $total

write-host "total number of folders in pwd" $folders -foregroundcolor green

if($exe -gt 0){
write-host "total number of exe files" $exe -foregroundcolor Yellow
}

if($cmd -gt 0){
write-host "total number of bat files" $cmd -foregroundcolor red
}

if($py -gt 0){
write-host "total number of py files" $py -foregroundcolor red
}

if($vbs -gt 0){
write-host "total number of vbs files" $vbs -foregroundcolor magenta
}

if($ps1 -gt 0 ){
write-host "total number of ps1 files" $ps1 -foregroundcolor blue
}
if($cpp -gt 0){
write-host "total number of cpp files" $cpp -foregroundcolor cyan
}
}        





function high_light
{
param ($dir = ".", $all = $false) 
$script:exe = 0
$script:cmd = 0 
$script:py = 0
$script:vbs = 0
$script:ps1 = 0
$script:cpp = 0
$script:folders = 0




$origFg = $host.ui.rawui.foregroundColor 
if ( $all ) { $toList = ls -force $dir }

    else { $toList = ls $dir }

 

    foreach ($Item in $toList)  

    { 

        Switch ($Item.Extension)  

        { 

            ".Exe" {$host.ui.rawui.foregroundColor = "Yellow" ; $script:exe++ } #1

            ".bat" {$host.ui.rawui.foregroundColor = "Red"; $script:cmd++ } #2

            ".py" {$host.ui.rawui.foregroundColor = "Red"; $script:py++} #3

            ".vbs" {$host.ui.rawui.foregroundColor = "Magenta"; $script:vbs++ } #4
            
            ".ps1" {$host.ui.rawui.foregroundColor = "Blue"; $script:ps1++ } #5
            
            ".cpp" {$host.ui.rawui.foregroundColor = "Cyan"; $script:cpp++} #6

            Default {$host.ui.rawui.foregroundColor = $origFg} 

        } 

        if ($item.Mode.StartsWith("d")) {$host.ui.rawui.foregroundColor = "Green"; $script:folders++} #7

        $item 
        
       }  

    $host.ui.rawui.foregroundColor = $origFg 

}



high_light
display
}
#   8.)
#
function log_history {
 get-date >> $file
get-history >> $file
write-host "history dump done"
}
#   9.)
#
function view_history{
ii $file
}
#  10.)
# 
function google {
$query = $args[0]
$ie = New-Object -comobject InternetExplorer.Application
$ie.Navigate2("https://www.google.com/search?q=$query")
$ie.visible= $true
}
#  11.)
#
function ps_info {
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
#   12.)
#
filter obj_Veiw {
$input | get-member | out-gridview
}
#   13.)
#
filter methods{
$input | get-member -membertype method | out-gridview
}
#
#   14.)
function list {
Get-Command -Module BTPDSL
}