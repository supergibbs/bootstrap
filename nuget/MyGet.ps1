$nuget = $env:NuGet

$yaml = (Select-String ..\_config.yml -pattern "current_version").ToString().Split(" ");
$bsversion = $yaml[$yaml.Length - 1]

& $nuget pack "bootstrap.nuspec" -NonInteractive -NoPackageAnalysis -BasePath "..\" -Version $bsversion
& $nuget pack "bootstrap.less.nuspec" -NonInteractive -NoPackageAnalysis -BasePath "..\" -Version $bsversion