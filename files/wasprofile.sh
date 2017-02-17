#!/bin/bash
###########################License Acceptance #################################
/opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/wassilent.xml -acceptLicense -sP

###################### Was profile for ordinary WAS Install ##############################################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -enableService false -hostname dnx18.datanix.comm -serverName server1 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01  -enableAdminSecurity true -adminUserName wasadmin -adminPassword #$P@ssw0rd#$
######################## Was Profile Creations for clauster WAS ###########################
#/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -enableService false -hostname ustlvcmsp2344.rdcms.eds.com -nodeName ustlvcmsp2344Node01 -cellName ustlvcmsp2344Node01Cell -serverName server1 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01  -enableAdminSecurity true -adminUserName wasadmin -adminPassword Stadia2810Thing
#####################  Starting Was Server ###################################
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startNode.sh
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh server1

####################  Was Federation ###################################
#/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/addNode.sh ustlvcmsp2343 8879 -username wasadmin -password Stadia2810Thing

