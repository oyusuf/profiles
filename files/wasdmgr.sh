#!/bin/bash
###########################License Acceptance #################################
/opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/wassilent.xml -acceptLicense -sP

######################### Deployment Manger ( Edit to reflect your server name ###########################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName Dmgr01 -appServerNodeName dnx18Node01 -enableService false -hostName dnx18.datanix.comm -nodeName dnx18CellManager01 -cellName dnx18Cell01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/cell/dmgr -profilePath /opt/IBM/WebSphere/AppServer/profiles/Dmgr01 -nodeProfilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01 -enableAdminSecurity true -adminUserName wasadmin -adminPassword #$P@ssw0rd#$

######################## Was Profile Creations ################################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -appServerNodeName dnx18Node01 -enableService false -hostname dnx18.datanic.comm -nodeName dnx18CellManager01 -cellName dnx18Cell01 -dmgrProfilePath /opt/IBM/WebSphere/AppServer/profiles/Dmgr01  -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01  -enableAdminSecurity true -adminUserName wasadmin -adminPassword #$P@ssw0rd#$

######################### Starting Dmgr  Server ################################
/opt/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/startManager.sh


###########################  Starting Was Server #############################
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startNode.sh
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh server1
