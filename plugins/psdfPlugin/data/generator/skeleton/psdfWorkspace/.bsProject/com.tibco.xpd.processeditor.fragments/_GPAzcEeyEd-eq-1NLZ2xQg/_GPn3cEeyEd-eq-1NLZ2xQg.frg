<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_8v5zwIDeEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-09-12T17:24:53BST</xpdl2:Created>
    <xpdl2:Description/>
    <xpdl2:Documentation/>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>rsomayaj</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_9RSClIDeEd28P6TQ-F95eg" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_8v5zwYDeEd28P6TQ-F95eg">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_9RSClYDeEd28P6TQ-F95eg" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="314.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_8v5zwYDeEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage-Process" Name="ProcessPackageProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description/>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="_9RSCo4DeEd28P6TQ-F95eg" xpdExt:DisplayName="sw_starter" Name="sw_starter">
          <xpdl2:ParticipantType Type="HUMAN"/>
          <xpdl2:Description>The built-in iProcess user that implies whoever starts a Process Case. </xpdl2:Description>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:DataFields>
        <xpdl2:DataField Id="_9RSCpIDeEd28P6TQ-F95eg" xpdExt:DisplayName="msg" Name="msg">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>255</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
          <xpdl2:Description>The message to be displayed</xpdl2:Description>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_9RSCpYDeEd28P6TQ-F95eg" xpdExt:DisplayName="name" Name="name">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>200</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
      </xpdl2:DataFields>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_9RSCloDeEd28P6TQ-F95eg" Name="StartEvent" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="44.0" LaneId="_9RSClYDeEd28P6TQ-F95eg" Width="57.0">
              <xpdl2:Coordinates XCoordinate="92.0" YCoordinate="161.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_9RSCl4DeEd28P6TQ-F95eg" Name="Capturename" FinishMode="Manual" IsATransaction="false" StartMode="Manual" xpdExt:DisplayName="Capture name">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_9RSCmIDeEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="_9RSCmYDeEd28P6TQ-F95eg"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performer>_9RSCo4DeEd28P6TQ-F95eg</xpdl2:Performer>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="72.0" LaneId="_9RSClYDeEd28P6TQ-F95eg" Width="104.0">
              <xpdl2:Coordinates XCoordinate="196.0" YCoordinate="165.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Offer="AllocateOne" xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <xpdExt:AssociatedParameters>
            <xpdExt:AssociatedParameter FormalParam="name" Mode="OUT" Mandatory="false">
              <xpdl2:Description/>
            </xpdExt:AssociatedParameter>
          </xpdExt:AssociatedParameters>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_9RSCmoDeEd28P6TQ-F95eg" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="44.0" LaneId="_9RSClYDeEd28P6TQ-F95eg" Width="51.0">
              <xpdl2:Coordinates XCoordinate="571.0" YCoordinate="161.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_9RSCm4DeEd28P6TQ-F95eg" Name="Displaymessage" xpdExt:DisplayName="Display message">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_9RSCnIDeEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="_9RSCnYDeEd28P6TQ-F95eg"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performer>_9RSCo4DeEd28P6TQ-F95eg</xpdl2:Performer>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="72.0" LaneId="_9RSClYDeEd28P6TQ-F95eg" Width="105.0">
              <xpdl2:Coordinates XCoordinate="456.0" YCoordinate="165.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Offer="AllocateOne" xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <xpdExt:AssociatedParameters>
            <xpdExt:AssociatedParameter FormalParam="msg" Mode="IN" Mandatory="false">
              <xpdl2:Description/>
            </xpdExt:AssociatedParameter>
          </xpdExt:AssociatedParameters>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_9RSCnoDeEd28P6TQ-F95eg" Name="Createmessage" xpdExt:DisplayName="Create message">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskScript>
                <xpdl2:Script ScriptGrammar="javascript">msg = "Hello " + name; &#13;</xpdl2:Script>
              </xpdl2:TaskScript>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="72.0" LaneId="_9RSClYDeEd28P6TQ-F95eg" Width="104.0">
              <xpdl2:Coordinates XCoordinate="324.0" YCoordinate="165.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_9RSCn4DeEd28P6TQ-F95eg" From="_9RSCloDeEd28P6TQ-F95eg" To="_9RSCl4DeEd28P6TQ-F95eg"/>
        <xpdl2:Transition Id="_9RSCoIDeEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_9RSCm4DeEd28P6TQ-F95eg" To="_9RSCmoDeEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_9RSCoYDeEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_9RSCnoDeEd28P6TQ-F95eg" To="_9RSCm4DeEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_9RSCooDeEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_9RSCl4DeEd28P6TQ-F95eg" To="_9RSCnoDeEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="0,0,700,318"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
