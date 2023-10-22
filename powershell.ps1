$resourceGroupName = "example-resource-group"
$location = "East US"
$storageAccountName = "examplestorageaccount"
$skuName = "Standard_LRS"

# Login to Azure
Connect-AzAccount

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind StorageV2 `
                     -AccessTier Hot `
                     -EnableHttpsTrafficOnly $true