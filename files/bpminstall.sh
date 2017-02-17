#!/bin/bash
############# JAVA7/WEBSPHERE INSTALL #####################################
/opt/IBM/WebSphere/InstallationManager/eclipse/tools/imcl install com.ibm.bpm.ADV.v85_8.5.7000.20160301_1551,AdvancedProcessServer.NonProduction com.ibm.websphere.IBMJAVA.v70_7.0.9010.20151112_0100,com.ibm.sdk.7 com.ibm.websphere.ND.v85_8.5.5008.20151112_0939,core.feature,ejbdeploy,thinclient,embeddablecontainer,samples,com.ibm.sdk.6_64bit -accessRights nonAdmin -acceptLicense -sharedResourcesDirectory /opt/IBM/InstallationManager/IMShared -dataLocation /opt/IBM/InstallationManager/Data -installationDirectory /opt/IBM/WebSphere/AppServer/ -repositories /opt/BPMPackage/repository/repos_64bit -showVerboseProgress -log /opt/IBM/WASBPMSilentInstall.log
############################   BPM FIXPACK INSTALL ###########################
#/opt/IBM/InstallationManager/eclipse/tools/imcl install com.ibm.bpm.ADV.v85 -acceptLicense -installationDirectory /opt/IBM/WebSphere/ -repositories /opt/BPMFixpack -log /tmp/CF2Install.log
###########################    WAS PROFILE  ##################################
#/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/default -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01  -enableAdminSecurity true -adminUserName wasadmin -adminPassword p@ssw0rd
#################### START WAS ##############################################
#/opt/IBM/WebSphere/AppServer/bin/startServer.sh server1
