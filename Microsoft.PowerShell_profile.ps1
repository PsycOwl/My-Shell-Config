$targetFile = "$PROFILE"
$DIR = Get-Item $targetFile | Select-Object -ExpandProperty DirectoryName

Clear-Host
oh-my-posh init pwsh --config "$DIR\hul10-edited.omp.json" | Invoke-Expression
fastfetch -c "$DIR\fastfetch.json"

function winutil {
    irm "https://christitus.com/win" | iex
}