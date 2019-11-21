

##Provision Module Scaffolding
import-Module Plaster
$manifestProperties = @{
    Path = ".\FullModuleTemplate\"
    Title = "Full Module Template"
    TemplateName = 'FullModuleTemplate'
    TemplateVersion = '0.0.1'
    Author = 'Kevin Nishimura'
    GitHub = "Yes"
}

$plaster = @{
    TemplatePath = $manifestProperties.Path
    DestinationPath = "W:\PSDuo"
}

New-Item -ItemType Directory -Path $plaster.DestinationPath

Invoke-Plaster @plaster -Verbose