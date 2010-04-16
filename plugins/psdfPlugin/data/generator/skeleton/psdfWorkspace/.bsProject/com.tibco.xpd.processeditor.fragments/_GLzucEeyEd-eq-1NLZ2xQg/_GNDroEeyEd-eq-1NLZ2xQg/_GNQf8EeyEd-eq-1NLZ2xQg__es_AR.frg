<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_zFr8UI2DEd2zaKmu6x991g" Name="EventstepInlineandStandAlone">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description></xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_LzVhYOODEduPAb4MANvU-g">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" xpdExt:DisplayName="null" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="300.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:Artifacts>
    <xpdl2:Artifact Id="_LzVhWuODEduPAb4MANvU-g" ArtifactType="Annotation" TextAnnotation="Note:The Stand-Alone Event is actually a BPMN Task of type &quot;Receive&quot;.&#xD;&#xA;This will map to an iProcess Event step.">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="43.0" LaneId="_fDMgEeEgEduEkIS8HwrO5Q" Width="209.0">
          <xpdl2:Coordinates XCoordinate="220.0" YCoordinate="112.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_LzVhYOODEduPAb4MANvU-g" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_UpobJ_73EduRnKf2Rd_RwQ" ArtifactType="Annotation" TextAnnotation="Use a &quot;Receive Task&quot; to receive an iProcess Event that can have outbound exception paths">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_YmWsIP7zEduRnKf2Rd_RwQ" Width="245.0">
          <xpdl2:Coordinates XCoordinate="175.5" YCoordinate="90.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_UpobLP73EduRnKf2Rd_RwQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_ZuM5xOODEduPAb4MANvU-g" ArtifactType="Annotation" TextAnnotation="Note the two different ways of representing iProcess Events:&#xD;&#xA;- when defined using an Intermediate Event (&quot;Wait for Document&quot;) they can only have one output sequence&#xD;&#xA;- when defined using a Receive Task (&quot;Wait for Phone Call&quot;) they can have boundary (exception) conditions ">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="69.0" LaneId="_CTrv8eHWEduWmpuYMP-IEA" Width="355.0">
          <xpdl2:Coordinates XCoordinate="31.0" YCoordinate="41.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_ZuM51uODEduPAb4MANvU-g" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_P1UwJ-ODEduPAb4MANvU-g" ArtifactType="Annotation" TextAnnotation="Cancel events need configuring to publish / catch specific error code">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_yUcjweEfEduEkIS8HwrO5Q" Width="172.0">
          <xpdl2:Coordinates XCoordinate="23.0" YCoordinate="195.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_P1UwNuODEduPAb4MANvU-g" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_p68GwI4BEd2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Note:The Stand-Alone Event is actually a BPMN Task of type &quot;Receive&quot;.This will map to an iProcess Event step.">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="43.0" LaneId="_Fragment_Dummy_Lane_" Width="216.0">
          <xpdl2:Coordinates XCoordinate="210.0" YCoordinate="111.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_LzVhYOODEduPAb4MANvU-g" xpdExt:DisplayName="Event step - Inline and StandAlone" Name="EventstepInlineandStandAlone">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_LzVhWOODEduPAb4MANvU-g" Name="StandAloneEvent" xpdExt:DisplayName="Stand-Alone Event">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive Implementation="Unspecified" Instantiate="false">
                <xpdl2:Message Id="_LzVhWeODEduPAb4MANvU-g"/>
              </xpdl2:TaskReceive>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_Fragment_Dummy_Lane_" Width="96.0">
              <xpdl2:Coordinates XCoordinate="130.0" YCoordinate="112.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_LzVhW-ODEduPAb4MANvU-g" Name="End" xpdExt:DisplayName="End">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_Fragment_Dummy_Lane_" Width="30.0">
              <xpdl2:Coordinates XCoordinate="293.0" YCoordinate="31.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_LzVhXOODEduPAb4MANvU-g" Name="InlineEvent" xpdExt:DisplayName="Inline Event">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Trigger="None"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_Fragment_Dummy_Lane_" Width="59.0">
              <xpdl2:Coordinates XCoordinate="151.0" YCoordinate="31.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_LzVhXeODEduPAb4MANvU-g" Name="Start" xpdExt:DisplayName="Start">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_Fragment_Dummy_Lane_" Width="30.0">
              <xpdl2:Coordinates XCoordinate="22.0" YCoordinate="31.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_LzVhXuODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_LzVhXOODEduPAb4MANvU-g" To="_LzVhW-ODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_LzVhX-ODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_LzVhXeODEduPAb4MANvU-g" To="_LzVhXOODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_LzVhYOODEduPAb4MANvU-g.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="75,64,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="213,75,209,43"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="271,0,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="115,0,59,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="0,0,30,44"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
