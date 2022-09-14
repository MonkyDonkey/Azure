Connect-AzurreRmAccount
$resourceGroupName = "newJoinedDomainVM"
$resourceGroupLocation = "eastus"
$rg = New-AzureRmResourceGroup -Name $resourceGroupName - Location $resourceGroupLocation

$parameters = @{
  existingVnetName = "adVNET";
  existingSubnetName = "adSubnet";
  domainToJoin = "exam.com";
  domainUsername = "admin";
  domainPassword = "youDontKnowMyPassword";
  ouPath = "OU=testOU,DC=exam,DC=com";
  adminUsername = "vmAdmin";
  adminPassword = "vmPassword"
  
}
$templatePath = https://github.com/MonkyDonkey/Azure/raw/main/createVmAndAddToDomain.json

New-AzureRmResourceGroupDeployment -ResourceGroupname $rg.ResourceGroupname -TemplateFile $templatePath -TemplateparameterObject $parameters -verbose
