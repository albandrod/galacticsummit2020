# Add the asset for getting the credentials...

# Connect to the Teams API
Connect-MicrosoftTeams -Credential $cred

# Create a new Microsoft Team
New-Team -DisplayName "My Galatic Team" -Description 'My Galatic Team' -Visibility Private
