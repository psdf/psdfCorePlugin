<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_zHeFAI2DEd2zaKmu6x991g" Name="EventreleasewithdrawsaUserstep">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description></xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_P1UwNuODEduPAb4MANvU-g">
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
    <xpdl2:Artifact Id="_Hb11UI4BEd2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Cancel events need configuring to publish / catch specific error code">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_Fragment_Dummy_Lane_" Width="184.0">
          <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="218.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_P1UwNuODEduPAb4MANvU-g" xpdExt:DisplayName="Event release withdraws a User step" Name="EventreleasewithdrawsaUserstep">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="_9W6_wZwiEd2-V4H1CvFFfg" xpdExt:DisplayName="SW_STARTER" Name="SW_STARTER">
          <xpdl2:ParticipantType Type="HUMAN"/>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_P1UwI-ODEduPAb4MANvU-g" Name="bothpaths" xpdExt:DisplayName="both paths">
          <xpdl2:Route GatewayType="Parallel"/>
          <xpdl2:TransitionRestrictions>
            <xpdl2:TransitionRestriction>
              <xpdl2:Split Type="Parallel">
                <xpdl2:TransitionRefs>
                  <xpdl2:TransitionRef Id="_P1UwMOODEduPAb4MANvU-g"/>
                  <xpdl2:TransitionRef Id="_Qd_LQY4BEd2zaKmu6x991g"/>
                </xpdl2:TransitionRefs>
              </xpdl2:Split>
            </xpdl2:TransitionRestriction>
          </xpdl2:TransitionRestrictions>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="59.0" LaneId="_Fragment_Dummy_Lane_" Width="54.0">
              <xpdl2:Coordinates XCoordinate="131.0" YCoordinate="85.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwJOODEduPAb4MANvU-g" Name="UserTask2" IsATransaction="false" xpdExt:DisplayName="User Task 2">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_P1UwJeODEduPAb4MANvU-g"/>
                <xpdl2:MessageOut Id="_P1UwJuODEduPAb4MANvU-g"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_9W6_wZwiEd2-V4H1CvFFfg</xpdl2:Performer>
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
              <xpdl2:Coordinates XCoordinate="310.0" YCoordinate="163.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwKOODEduPAb4MANvU-g" Name="End3" xpdExt:DisplayName="End3">
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
              <xpdl2:Coordinates XCoordinate="420.0" YCoordinate="195.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwKeODEduPAb4MANvU-g" Name="Start" xpdExt:DisplayName="Start">
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
              <xpdl2:Coordinates XCoordinate="37.0" YCoordinate="85.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwKuODEduPAb4MANvU-g" Name="End1" xpdExt:DisplayName="End1">
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
              <xpdl2:Coordinates XCoordinate="420.0" YCoordinate="41.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwK-ODEduPAb4MANvU-g" Name="CancelUserTask2" xpdExt:DisplayName="Cancel User Task 2">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Trigger="Signal">
              <xpdl2:TriggerResultSignal CatchThrow="THROW" Name="error"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="59.0">
              <xpdl2:Coordinates XCoordinate="323.0" YCoordinate="41.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwLOODEduPAb4MANvU-g" Name="End2" xpdExt:DisplayName="End2">
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
              <xpdl2:Coordinates XCoordinate="420.0" YCoordinate="145.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwLeODEduPAb4MANvU-g" Name="Task2cancelled" xpdExt:DisplayName="Task 2 cancelled">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_P1UwJOODEduPAb4MANvU-g" Trigger="Signal">
              <xpdl2:TriggerResultSignal CatchThrow="CATCH" Name="error"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="59.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo LaneId="_Fragment_Dummy_Lane_" ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="22.5" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_P1UwLuODEduPAb4MANvU-g" Name="Event1" xpdExt:DisplayName="Event1">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_Fragment_Dummy_Lane_" Width="36.0">
              <xpdl2:Coordinates XCoordinate="220.0" YCoordinate="41.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_P1UwL-ODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_P1UwKeODEduPAb4MANvU-g" To="_P1UwI-ODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="75.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_P1UwMOODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_P1UwI-ODEduPAb4MANvU-g" To="_P1UwJOODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="43.0" YCoordinate="21.0"/>
              <xpdl2:Coordinates XCoordinate="-68.0" YCoordinate="-57.0"/>
              <xpdl2:Coordinates XCoordinate="91.0" YCoordinate="80.0"/>
              <xpdl2:Coordinates XCoordinate="-92.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_P1UwMeODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_P1UwJOODEduPAb4MANvU-g" To="_P1UwLOODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.935127962063845" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_P1UwM-ODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_P1UwLeODEduPAb4MANvU-g" To="_P1UwKOODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_Qd_LQY4BEd2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_P1UwI-ODEduPAb4MANvU-g" To="_P1UwLuODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="1.0" YCoordinate="-44.0"/>
              <xpdl2:Coordinates XCoordinate="-88.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_RsXp8I4BEd2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_P1UwLuODEduPAb4MANvU-g" To="_P1UwK-ODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_SHVusI4BEd2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_P1UwK-ODEduPAb4MANvU-g" To="_P1UwKuODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_P1UwNuODEduPAb4MANvU-g.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="82,48,54,59"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="240,116,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="1,165,172,30"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="383,165,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="0,55,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_6" Value="383,0,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_7" Value="286,1,59,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_8" Value="383,115,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_9" Value="305,165,46,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_10" Value="168,0,36,44"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
