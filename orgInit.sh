# Create the demo org
sfdx shane:org:create -f config/project-scratch-def.json -d 3 -s --wait 60 --userprefix field -o audit.trail 

# Push the metadata into the new scratch org.
sfdx force:source:push

# Set the default password.
sfdx shane:user:password:set -g User -l User -p salesforce1

# Open the org.
sfdx force:org:open
