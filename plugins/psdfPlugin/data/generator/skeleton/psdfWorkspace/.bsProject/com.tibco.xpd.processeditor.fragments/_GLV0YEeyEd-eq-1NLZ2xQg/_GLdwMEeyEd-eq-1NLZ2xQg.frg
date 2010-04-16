<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:orchestrator="http://www.tibco.com/XPD/orchestrator1.0.0" xmlns:order="http://www.tibco.com/XPD/order1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_eo8roGGYEd6YR5jXxrZ3zQ" Name="ServiceProcessTemplate">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description>Add your own diagram fragments using &lt;Ctrl>+Drag from diagram editor or Copy fragment in editor and Paste here.</xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_jsjgrszDEduatIuc47hueQ" xpdExt:DisplayName="Service Caller" Name="ServiceCaller" BoundaryVisible="true" Process="_jsjgvMzDEduatIuc47hueQ">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
    <xpdl2:Pool Id="_jsjgr8zDEduatIuc47hueQ" xpdExt:DisplayName="Service Provider" Name="ServiceProvider" BoundaryVisible="true" Process="_jsjgvMzDEduatIuc47hueQ">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_jsjgsMzDEduatIuc47hueQ" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="128,155,183" Height="256.0" IsVisible="true"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:MessageFlows>
    <xpdl2:MessageFlow Id="_jsjgu8zDEduatIuc47hueQ" xpdExt:DisplayName="" Name="" Source="_jsjgs8zDEduatIuc47hueQ" Target="_jsjgrszDEduatIuc47hueQ">
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
        <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
        <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
          <xpdl2:Coordinates XCoordinate="73.9405347682527" YCoordinate="0.0"/>
        </xpdl2:ConnectorGraphicsInfo>
        <xpdl2:ConnectorGraphicsInfo Style="_jsjgvMzDEduatIuc47hueQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:MessageFlow>
    <xpdl2:MessageFlow Id="_jsjguszDEduatIuc47hueQ" xpdExt:DisplayName="" Name="" Source="_jsjgrszDEduatIuc47hueQ" Target="_jsjgsczDEduatIuc47hueQ">
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
        <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
        <xpdl2:ConnectorGraphicsInfo Style="_jsjgvMzDEduatIuc47hueQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:MessageFlow>
  </xpdl2:MessageFlows>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_jsjgvMzDEduatIuc47hueQ" xpdExt:DisplayName="Service Process Template" Name="ServiceProcessTemplate">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_jsjgsczDEduatIuc47hueQ">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="Message">
              <xpdl2:TriggerResultMessage CatchThrow="CATCH">
                <xpdl2:Message Id="_jsjgsszDEduatIuc47hueQ"/>
                <xpdl2:WebServiceOperation>
                  <xpdl2:Service>
                    <xpdl2:EndPoint/>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
              </xpdl2:TriggerResultMessage>
            </xpdl2:StartEvent>
          </xpdl2:Event>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_jsjgsMzDEduatIuc47hueQ" Width="30.0">
              <xpdl2:Coordinates XCoordinate="95.0" YCoordinate="128.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_jsjgs8zDEduatIuc47hueQ" Name="ReplyToUnnamedEvent" xpdExt:DisplayName="Reply To: &lt;Unnamed Event>">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="Message">
              <xpdl2:TriggerResultMessage xpdExt:ReplyToActivityId="_jsjgsczDEduatIuc47hueQ" CatchThrow="THROW">
                <xpdl2:Message Id="_jsjgtMzDEduatIuc47hueQ"/>
                <xpdl2:WebServiceOperation>
                  <xpdl2:Service>
                    <xpdl2:EndPoint/>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
              </xpdl2:TriggerResultMessage>
            </xpdl2:EndEvent>
          </xpdl2:Event>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_jsjgsMzDEduatIuc47hueQ" Width="30.0">
              <xpdl2:Coordinates XCoordinate="479.0" YCoordinate="128.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_jsjgtczDEduatIuc47hueQ" Name="ServiceTask" xpdExt:DisplayName="Service Task">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService Implementation="Unspecified">
                <xpdl2:MessageIn Id="_jsjgtszDEduatIuc47hueQ"/>
                <xpdl2:MessageOut Id="_jsjgt8zDEduatIuc47hueQ"/>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_jsjgsMzDEduatIuc47hueQ" Width="96.0">
              <xpdl2:Coordinates XCoordinate="287.0" YCoordinate="128.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_jsjguMzDEduatIuc47hueQ" xpdExt:DisplayName="" Name="" From="_jsjgtczDEduatIuc47hueQ" To="_jsjgs8zDEduatIuc47hueQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_jsjguczDEduatIuc47hueQ" xpdExt:DisplayName="" Name="" From="_jsjgsczDEduatIuc47hueQ" To="_jsjgtczDEduatIuc47hueQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_jsjgvMzDEduatIuc47hueQ.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="0,0,700,105"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="0,135,700,260"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>