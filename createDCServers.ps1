Connect-AzurreRmAccount
$resourceGroupName = "newDcControllers"
$resourceGroupLocation = "eastus"
$rg = New-AzureRmResourceGroup -Name $resourceGroupName - Location $resourceGroupLocation

$parameters = @{
  adminUsername = "admin";
  adminPassword = "youDontKnowMyPassword";
  domainName = "exam.com";
  windowsserver = "2016-Datacenter"

}
$templatePath = https://github.com/MonkyDonkey/Azure/raw/main/CreateDcServers.json

New-AzureRmResourceGroupDeployment -ResourceGroupname $rg.ResourceGroupname -TemplateFile $templatePath $parameters
