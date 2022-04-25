# Create the demo org
sfdx shane:org:create -f config/project-scratch-def.json -d 3 -s --wait 60 --userprefix field -o audit.trail 

# Push the metadata into the new scratch org.
sfdx force:source:push

# Assign permission set
sfdx force:user:permset:assign -n fat_simulator

# Run anonymous apex to generate history for all existing contacts
sfdx force:apex:execute -f scripts/apex/genContactHistory.apex

# Set the default password.
sfdx shane:user:password:set -g User -l User -p salesforce1

# Open the org.
sfdx force:org:open -p /lightning/o/Contact/list/

