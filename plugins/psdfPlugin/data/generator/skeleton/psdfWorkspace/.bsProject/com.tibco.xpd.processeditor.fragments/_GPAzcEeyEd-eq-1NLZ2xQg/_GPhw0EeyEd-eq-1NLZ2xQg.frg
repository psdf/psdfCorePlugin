<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_-9srkIDfEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-09-12T17:32:18BST</xpdl2:Created>
    <xpdl2:Description/>
    <xpdl2:Documentation/>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>rsomayaj</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="__nt5D4DfEd28P6TQ-F95eg" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_-9srkYDfEd28P6TQ-F95eg">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="__nt5EIDfEd28P6TQ-F95eg" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="450.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_-9srkYDfEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage-Process" Name="ProcessPackageProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description/>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="__nt5KoDfEd28P6TQ-F95eg" xpdExt:DisplayName="sw_starter" Name="sw_starter">
          <xpdl2:ParticipantType Type="HUMAN"/>
          <xpdl2:Description>The built-in iProcess user that implies whoever starts a Process Case. </xpdl2:Description>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:DataFields>
        <xpdl2:DataField Id="__nt5K4DfEd28P6TQ-F95eg" xpdExt:DisplayName="Field" Name="Field">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="BOOLEAN"/>
          </xpdl2:DataType>
        </xpdl2:DataField>
      </xpdl2:DataFields>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5EYDfEd28P6TQ-F95eg">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="30.0">
              <xpdl2:Coordinates XCoordinate="56.0" YCoordinate="188.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5EoDfEd28P6TQ-F95eg" Name="ManageCase" IsATransaction="false" xpdExt:DisplayName="Manage Case">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="__nt5E4DfEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="__nt5FIDfEd28P6TQ-F95eg"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performer>__nt5KoDfEd28P6TQ-F95eg</xpdl2:Performer>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="74.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="106.0">
              <xpdl2:Coordinates XCoordinate="160.0" YCoordinate="188.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5FYDfEd28P6TQ-F95eg" Name="ReviewReminder" xpdExt:DisplayName="Review Reminder">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="__nt5FoDfEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="__nt5F4DfEd28P6TQ-F95eg"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performer>__nt5KoDfEd28P6TQ-F95eg</xpdl2:Performer>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="74.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="113.0">
              <xpdl2:Coordinates XCoordinate="233.0" YCoordinate="374.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5GIDfEd28P6TQ-F95eg">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="30.0">
              <xpdl2:Coordinates XCoordinate="507.0" YCoordinate="300.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5GYDfEd28P6TQ-F95eg" Name="CloseCase" xpdExt:DisplayName="Close Case">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="__nt5GoDfEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="__nt5G4DfEd28P6TQ-F95eg"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performer>__nt5KoDfEd28P6TQ-F95eg</xpdl2:Performer>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="79.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="104.0">
              <xpdl2:Coordinates XCoordinate="398.0" YCoordinate="137.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5HIDfEd28P6TQ-F95eg" Name="ReferCase" xpdExt:DisplayName="Refer Case">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="__nt5HYDfEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="__nt5HoDfEd28P6TQ-F95eg"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performer>__nt5KoDfEd28P6TQ-F95eg</xpdl2:Performer>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="77.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="104.0">
              <xpdl2:Coordinates XCoordinate="398.0" YCoordinate="299.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5H4DfEd28P6TQ-F95eg" Name="Timeout1Day" xpdExt:DisplayName="Timeout [1 Day]">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="__nt5EoDfEd28P6TQ-F95eg" Trigger="Timer">
              <xpdl2:TriggerTimer/>
            </xpdl2:IntermediateEvent>
          </xpdl2:Event>
          <xpdl2:Deadline>
            <xpdl2:DeadlineDuration ScriptGrammar="ConstantPeriod">
<xpdExt:ConstantPeriod Days="1"/>
</xpdl2:DeadlineDuration>
          </xpdl2:Deadline>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="30.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="23.75" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5IIDfEd28P6TQ-F95eg">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="30.0">
              <xpdl2:Coordinates XCoordinate="507.0" YCoordinate="138.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="__nt5IYDfEd28P6TQ-F95eg">
          <xpdl2:Route GatewayType="Exclusive" MarkerVisible="true" ExclusiveType="Data"/>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="45.0" LaneId="__nt5EIDfEd28P6TQ-F95eg" Width="43.0">
              <xpdl2:Coordinates XCoordinate="269.0" YCoordinate="187.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="__nt5IoDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5EYDfEd28P6TQ-F95eg" To="__nt5EoDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5I4DfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5H4DfEd28P6TQ-F95eg" To="__nt5FYDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5JIDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5IYDfEd28P6TQ-F95eg" To="__nt5GYDfEd28P6TQ-F95eg">
          <xpdl2:Condition Type="OTHERWISE"/>
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="20.0" YCoordinate="-49.0"/>
              <xpdl2:Coordinates XCoordinate="-109.0" YCoordinate="1.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5JYDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5IYDfEd28P6TQ-F95eg" To="__nt5HIDfEd28P6TQ-F95eg">
          <xpdl2:Condition Type="CONDITION">
          	<xpdl2:Expression ScriptGrammar="JavaScript">Field==true;</xpdl2:Expression>
          </xpdl2:Condition>
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="10.0" YCoordinate="84.0"/>
              <xpdl2:Coordinates XCoordinate="-117.0" YCoordinate="1.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="47.562504014314484" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5JoDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5GYDfEd28P6TQ-F95eg" To="__nt5IIDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5J4DfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5HIDfEd28P6TQ-F95eg" To="__nt5GIDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5KIDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5FYDfEd28P6TQ-F95eg" To="__nt5EoDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="-91.0" YCoordinate="0.0"/>
              <xpdl2:Coordinates XCoordinate="-31.0" YCoordinate="176.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="__nt5KYDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="__nt5EoDfEd28P6TQ-F95eg" To="__nt5IYDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
      	<xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="0,0,700,454"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
