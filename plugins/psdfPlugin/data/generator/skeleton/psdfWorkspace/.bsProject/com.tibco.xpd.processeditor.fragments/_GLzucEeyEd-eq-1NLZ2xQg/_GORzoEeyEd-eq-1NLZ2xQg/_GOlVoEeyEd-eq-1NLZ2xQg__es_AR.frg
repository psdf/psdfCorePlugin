<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_zDwCoI2DEd2zaKmu6x991g" Name="Staticsubproccallwithparameterisedmappingsanddeadline">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description></xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_wbRutOODEduPAb4MANvU-g">
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
  <xpdl2:Associations>
    <xpdl2:Association Id="_gbRR4I4CEd2zaKmu6x991g" xpdExt:DisplayName="" Name="" AssociationDirection="None" Source="_bpMqAI4CEd2zaKmu6x991g" Target="_wbRuouODEduPAb4MANvU-g">
      <xpdl2:Object Id="_gbRR4Y4CEd2zaKmu6x991g"/>
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:Association>
    <xpdl2:Association Id="_g1yqso4CEd2zaKmu6x991g" xpdExt:DisplayName="" Name="" AssociationDirection="None" Source="_wbRuouODEduPAb4MANvU-g" Target="_bSQJoI4CEd2zaKmu6x991g">
      <xpdl2:Object Id="_g1yqs44CEd2zaKmu6x991g"/>
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:Association>
  </xpdl2:Associations>
  <xpdl2:Artifacts>
    <xpdl2:Artifact Id="_bSQJoI4CEd2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="See &quot;Mappings&quot; tabs on the sub-process call properties">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_Fragment_Dummy_Lane_" Width="149.0">
          <xpdl2:Coordinates XCoordinate="56.0" YCoordinate="195.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_bpMqAI4CEd2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Calls SP2">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="20.0" LaneId="_Fragment_Dummy_Lane_" Width="0.0">
          <xpdl2:Coordinates XCoordinate="65.0" YCoordinate="29.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_wbRutOODEduPAb4MANvU-g" xpdExt:DisplayName="Static sub-proc call with parameterised mappings and deadline" Name="Staticsubproccallwithparameterisedmappingsanddeadline">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="_Tqd6UZwjEd2-V4H1CvFFfg" xpdExt:DisplayName="SW_STARTER" Name="SW_STARTER">
          <xpdl2:ParticipantType Type="HUMAN"/>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_wbRuouODEduPAb4MANvU-g" Name="SubProc2" FinishMode="Automatic" StartMode="Automatic" xpdExt:DisplayName="SubProc 2">
          <xpdl2:Implementation>
            <xpdl2:SubFlow Id="-unknown-"/>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_Fragment_Dummy_Lane_" Width="96.0">
              <xpdl2:Coordinates XCoordinate="175.0" YCoordinate="105.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_wbRuo-ODEduPAb4MANvU-g" Name="End1" xpdExt:DisplayName="End1">
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
              <xpdl2:Coordinates XCoordinate="312.0" YCoordinate="104.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_wbRupOODEduPAb4MANvU-g" Name="User1" IsATransaction="false" xpdExt:DisplayName="User 1">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_wbRupeODEduPAb4MANvU-g"/>
                <xpdl2:MessageOut Id="_wbRupuODEduPAb4MANvU-g"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_Tqd6UZwjEd2-V4H1CvFFfg</xpdl2:Performer>
          </xpdl2:Performers>
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
              <xpdl2:Coordinates XCoordinate="290.0" YCoordinate="204.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_wbRuqOODEduPAb4MANvU-g" Name="Deadline" xpdExt:DisplayName="Deadline">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_wbRuouODEduPAb4MANvU-g" Trigger="Timer">
              <xpdl2:TriggerTimer/>
            </xpdl2:IntermediateEvent>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_Fragment_Dummy_Lane_" Width="30.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo LaneId="_Fragment_Dummy_Lane_" ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="22.5" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_wbRuqeODEduPAb4MANvU-g" Name="End2" xpdExt:DisplayName="End2">
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
              <xpdl2:Coordinates XCoordinate="407.0" YCoordinate="204.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_wbRuquODEduPAb4MANvU-g" Name="Start" xpdExt:DisplayName="Start">
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
              <xpdl2:Coordinates XCoordinate="43.0" YCoordinate="105.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_wbRurOODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_wbRuouODEduPAb4MANvU-g" To="_wbRuo-ODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="10.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="49.163114582171296" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_wbRureODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_wbRuquODEduPAb4MANvU-g" To="_wbRuouODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="60.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_wbRuruODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_wbRuqOODEduPAb4MANvU-g" To="_wbRupOODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="60.3125" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_wbRur-ODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_wbRupOODEduPAb4MANvU-g" To="_wbRuqeODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="9.6875" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="51.13489354999302" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_wbRutOODEduPAb4MANvU-g.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="99,46,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="269,62,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="214,145,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="38,0,48,17"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="166,95,43,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_6" Value="364,162,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_7" Value="0,63,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_8" Value="1,162,141,30"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
