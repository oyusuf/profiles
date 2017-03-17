#!/bin/bash
###########################License Acceptance #################################
/opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/wassilent.xml -acceptLicense -sP

###################### Was profile for ordinary WAS Install ##############################################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv02 -enableService false -hostname dnx23.datanix.comm -serverName server1 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv02  -enableAdminSecurity true -adminUserName wasadmin -adminPassword FPS2Snippers#$

######################## Was Profile Creations for clauster WAS ###########################
#/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -enableService false -hostname ustlvcmsp2344.rdcms.eds.com -nodeName ustlvcmsp2344Node01 -cellName ustlvcmsp2344Node01Cell -serverName server1 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01  -enableAdminSecurity true -adminUserName wasadmin -adminPassword Stadia2810Thing

#####################  Starting Was Server ###################################
/opt/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/startNode.sh
/opt/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/startServer.sh server1

####################  Was Federation ###################################
/opt/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/addNode.sh dnx22.datanix.comm 8879 -username wasadmin -password FPS2Snippers

