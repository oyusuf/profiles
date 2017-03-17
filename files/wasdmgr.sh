#!/bin/bash
###########################License Acceptance #################################
/opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/wassilent.xml -acceptLicense -sP

######################### Deployment Manger ( Edit to reflect your server name ###########################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName Dmgr01 -profilePath /opt/IBM/WebSphere/AppServer/profiles/Dmgr01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/management -serverType DEPLOYMENT_MANAGER -cellName dnx22Cell01 -nodeName Dmgr01 -hostName dnx22.datanix.comm -enableAdminSecurity true -adminUserName wasadmin -adminPassword FPS2Snippers#$

######################## Was Profile Creations ################################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01  -enableService false -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -serverName server1 -nodeName AppSrv01Node1 -hostName dnx22.datanix.comm -enableAdminSecurity true -adminUserName wasadmin -adminPassword FPS2Snippers#$

######################### Starting Dmgr  Server ################################
/opt/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/startManager.sh

###########################  Starting Was Server #############################
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startNode.sh
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh server1

