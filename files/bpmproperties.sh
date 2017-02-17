#!/bin/bash

##################################################   Property File   #########################################################
/opt/IBM/WebSphere/AppServer/bin/BPMConfig.sh -create -de /opt/IBM/WebSphere/AppServer/BPM/samples/config/advanced/Advanced-PS-SingleCluster-DB2.properties

##################################################  Fixpack of June  ##########################################################
/opt/IBM/WebSphere/InstallationManager/eclipse/tools/imcl install com.ibm.bpm.ADV.v85_8.5.700201606.20160622_1927 -acceptLicense -dataLocation /opt/IBM/InstallationManager/Data -installationDirectory /opt/IBM/WebSphere/AppServer/  -repositories /opt/BPMfixpack/ -showVerboseProgress -log /opt/IBM/BPMfixinstall.log

##################################################  WAS Fixpack  ##############################################################
/opt/IBM/WebSphere/InstallationManager/eclipse/tools/imcl install com.ibm.websphere.ND.v85_8.5.5010.20160721_0036 -acceptLicense -sharedResourcesDirectory /opt/IBM/InstallationManager/IMShared -dataLocation /opt/IBM/InstallationManager/Data -installationDirectory /opt/IBM/WebSphere/AppServer/ -repositories /opt/BPMWasfixpack/ -showVerboseProgress -log -showVerboseProgress -log /opt/IBM/WASBPMSilentInstall.log

################################################   BPM Fixpack  ###############################################################
/opt/IBM/WebSphere/InstallationManager/eclipse/tools/imcl install com.ibm.bpm.ADV.v85_8.5.700201609.20160928_1258 -acceptLicense -sharedResourcesDirectory /opt/IBM/InstallationManager/IMShared -dataLocation /opt/IBM/InstallationManager/Data -installationDirectory /opt/IBM/WebSphere/AppServer/ -repositories /opt/BPMfixpack-09-30-2016/ -showVerboseProgress -log -showVerboseProgress -log /opt/IBM/WASBPMSilentInstall.log

###############################################    BPM Database Upgrade #######################################################
/opt/IBM/WebSphere/AppServer/bin/DBUpgrade.sh  -profileName DmgrProfile -de BPMPSModeler

