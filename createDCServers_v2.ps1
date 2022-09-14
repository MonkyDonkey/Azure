Connect-AzurreRmAccount
$parameters = @{
  adminUsername = "admin";
  adminPassword = "youDontKnowMyPassword";
  domainName = "exam.com";
  dnsPrefix = "exam.com";
  pdcRDPPort = "3389";
  bdcRDPPort = "3389";
  adVMSize = "S";

}

New-AzResourceGroup -Name newDcControllers -Location eastus 
New-AzResourceGroupDeployment -ResourceGroupName newDcControllers -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/application-workloads/active-directory/active-directory-new-domain-ha-2-dc/azuredeploy.json -TemplateparameterObject $parameters -verbose
