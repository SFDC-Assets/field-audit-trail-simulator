sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p field -e audit.trail
sf project deploy start
sf org assign permset -n fat_simulator
sf apex run -f scripts/apex/genContactHistory.apex
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/o/Contact/list/
