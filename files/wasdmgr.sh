#!/bin/bash
###########################License Acceptance #################################
/opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/wassilent.xml -acceptLicense -sP

######################### Deployment Manger ( Edit to reflect your server name ###########################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName Dmgr01 -appServerNodeName ustlvcmsp2343Node01 -enableService false -hostName ustlvcmsp2343.rdcms.eds.com -nodeName ustlvcmsp2343CellManager01 -cellName ustlvcmsp2343Cell01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/cell/dmgr -profilePath /opt/IBM/WebSphere/AppServer/profiles/Dmgr01 -nodeProfilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01 -enableAdminSecurity true -adminUserName wasadmin -adminPassword Stadia2810Thing

######################## Was Profile Creations ################################
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -appServerNodeName ustlvcmsp2343Node01 -enableService false -hostname ustlvcmsp2343.rdcms.eds.com -nodeName ustlvcmsp2343CellManager01 -cellName ustlvcmsp2343Cell01 -dmgrProfilePath /opt/IBM/WebSphere/AppServer/profiles/Dmgr01  -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01  -enableAdminSecurity true -adminUserName wasadmin -adminPassword Stadia2810Thing

######################### Starting Dmgr  Server ################################
/opt/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/startManager.sh


###########################  Starting Was Server #############################
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startNode.sh
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh server1
