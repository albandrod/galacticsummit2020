#---------------------------------------------------------------------------------------
# 4-SoftDelete.ps1 - delete groups
# Microsoft Teams and Microsoft 365 Groups PowerShell Masterclass by @atwork
#---------------------------------------------------------------------------------------

# Get all groups or a specific group
Get-AzureADGroup | ? {$_.DisplayName -like 'My*'}

# Soft Delete a specific group
$ToDelete = "<groupid>"
Remove-AzureADGroup -ObjectId $ToDelete 

# Show all Soft Deleted Groups in descending order
Get-AzureADMSDeletedGroup | Sort-Object DeletedDateTime -Descending | `
    Format-Table Id, DisplayName, Description, Visibility, DeletedDateTime

# Restore a specific soft deleted group
Restore-AzureADMSDeletedDirectoryObject -Id $ToDelete

# Hard Delete a Group
Remove-AzureADMSDeletedDirectoryObject -Id $ToDelete
