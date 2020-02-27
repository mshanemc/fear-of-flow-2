sfdx force:org:create -f config/project-scratch-def.json -d 7 -s
sfdx force:source:push
sfdx force:package:install --package 04t1U000007sgLt -w 20 -r
sfdx force:user:permset:assign -n Run_Flows
sfdx force:user:create --definitionfile config/userDef/testUser.json
sfdx shane:user:permset:assign --firstname Test --lastname User --name Run_Flows
sfdx force:org:open