<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_zJjvsI2DEd2zaKmu6x991g" Name="ConditionalwithdrawalofanEvent">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description/>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" Name="Pool" Process="_oY2l6OOCEduPAb4MANvU-g">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="345.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:Artifacts>
    <xpdl2:Artifact Id="_oY2l1uOCEduPAb4MANvU-g" ArtifactType="Annotation" TextAnnotation="Use a Receive Task for the iProcess Event step">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="17.0" LaneId="_osq5geHVEduWmpuYMP-IEA" Width="231.0">
          <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="23.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_oY2l6OOCEduPAb4MANvU-g" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_qNkryOOCEduPAb4MANvU-g" ArtifactType="Annotation" TextAnnotation="Note: The Cancellation Events need&#13;&#10;configuring to publish / receive an error code">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_zxfQ4eEcEduEkIS8HwrO5Q" Width="235.0">
          <xpdl2:Coordinates XCoordinate="4.0" YCoordinate="307.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_qNkr2uOCEduPAb4MANvU-g" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_ND-NYI3_Ed2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Use a Receive Task for the iProcess Event step">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="17.0" LaneId="_Fragment_Dummy_Lane_" Width="231.0">
          <xpdl2:Coordinates XCoordinate="52.0" YCoordinate="31.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_oY2l6OOCEduPAb4MANvU-g" xpdExt:DisplayName="Conditional withdrawal of an Event" Name="ConditionalwithdrawalofanEvent">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="_qnV7MZwiEd2-V4H1CvFFfg" xpdExt:DisplayName="SW_STARTER" Name="SW_STARTER">
          <xpdl2:ParticipantType Type="HUMAN"/>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2lzOOCEduPAb4MANvU-g" Name="bothpaths" xpdExt:DisplayName="both paths">
          <xpdl2:Route GatewayType="Parallel"/>
          <xpdl2:TransitionRestrictions>
            <xpdl2:TransitionRestriction>
              <xpdl2:Split Type="Parallel">
                <xpdl2:TransitionRefs>
                  <xpdl2:TransitionRef Id="_oY2l3-OCEduPAb4MANvU-g"/>
                  <xpdl2:TransitionRef Id="_oY2l5eOCEduPAb4MANvU-g"/>
                </xpdl2:TransitionRefs>
              </xpdl2:Split>
            </xpdl2:TransitionRestriction>
          </xpdl2:TransitionRestrictions>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="59.0" LaneId="_Fragment_Dummy_Lane_" Width="54.0">
              <xpdl2:Coordinates XCoordinate="98.0" YCoordinate="199.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2lzeOCEduPAb4MANvU-g" Name="" xpdExt:DisplayName="">
          <xpdl2:Route GatewayType="Exclusive" MarkerVisible="true" ExclusiveType="Data"/>
          <xpdl2:TransitionRestrictions>
            <xpdl2:TransitionRestriction>
              <xpdl2:Split Type="Exclusive" ExclusiveType="Data">
                <xpdl2:TransitionRefs>
                  <xpdl2:TransitionRef Id="_oY2l4eOCEduPAb4MANvU-g"/>
                  <xpdl2:TransitionRef Id="_oY2l4-OCEduPAb4MANvU-g"/>
                </xpdl2:TransitionRefs>
              </xpdl2:Split>
            </xpdl2:TransitionRestriction>
          </xpdl2:TransitionRestrictions>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="45.0" LaneId="_Fragment_Dummy_Lane_" Width="43.0">
              <xpdl2:Coordinates XCoordinate="271.0" YCoordinate="114.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2lzuOCEduPAb4MANvU-g" Name="UserTask2" IsATransaction="false" xpdExt:DisplayName="User Task 2">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_oY2lz-OCEduPAb4MANvU-g"/>
                <xpdl2:MessageOut Id="_oY2l0OOCEduPAb4MANvU-g"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_qnV7MZwiEd2-V4H1CvFFfg</xpdl2:Performer>
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
              <xpdl2:Coordinates XCoordinate="399.0" YCoordinate="63.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l0eOCEduPAb4MANvU-g" Name="UserTask1" IsATransaction="false" xpdExt:DisplayName="User Task 1">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_oY2l0uOCEduPAb4MANvU-g"/>
                <xpdl2:MessageOut Id="_oY2l0-OCEduPAb4MANvU-g"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_qnV7MZwiEd2-V4H1CvFFfg</xpdl2:Performer>
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
              <xpdl2:Coordinates XCoordinate="177.0" YCoordinate="115.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l1OOCEduPAb4MANvU-g" Name="Event1" IsATransaction="false" xpdExt:DisplayName="Event 1">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive Implementation="Unspecified" Instantiate="false">
                <xpdl2:Message Id="_oY2l1eOCEduPAb4MANvU-g"/>
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
              <xpdl2:Coordinates XCoordinate="220.0" YCoordinate="245.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l1-OCEduPAb4MANvU-g" Name="End1" xpdExt:DisplayName="End1">
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
              <xpdl2:Coordinates XCoordinate="496.0" YCoordinate="63.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l2OOCEduPAb4MANvU-g" Name="Start" xpdExt:DisplayName="Start">
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
              <xpdl2:Coordinates XCoordinate="30.0" YCoordinate="200.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l2eOCEduPAb4MANvU-g" Name="End2" xpdExt:DisplayName="End2">
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
              <xpdl2:Coordinates XCoordinate="496.0" YCoordinate="181.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l2uOCEduPAb4MANvU-g" Name="CancelEvent1" xpdExt:DisplayName="Cancel Event 1">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="65.0">
              <xpdl2:Coordinates XCoordinate="399.0" YCoordinate="181.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l2-OCEduPAb4MANvU-g" Name="End3" xpdExt:DisplayName="End3">
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
              <xpdl2:Coordinates XCoordinate="365.0" YCoordinate="245.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l3OOCEduPAb4MANvU-g" Name="Event1cancelled" xpdExt:DisplayName="Event 1 cancelled">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_oY2l1OOCEduPAb4MANvU-g" Trigger="Signal">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="46.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo LaneId="_Fragment_Dummy_Lane_" ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="21.5625" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_oY2l3eOCEduPAb4MANvU-g" Name="End4" xpdExt:DisplayName="End4">
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
              <xpdl2:Coordinates XCoordinate="365.0" YCoordinate="304.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_oY2l3uOCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2l2OOCEduPAb4MANvU-g" To="_oY2lzOOCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="75.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="98.86510645000698" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l3-OCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2lzOOCEduPAb4MANvU-g" To="_oY2l0eOCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="1.0" YCoordinate="-30.0"/>
              <xpdl2:Coordinates XCoordinate="-40.0" YCoordinate="-1.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l4OOCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2l0eOCEduPAb4MANvU-g" To="_oY2lzeOCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="75.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l4eOCEduPAb4MANvU-g" xpdExt:DisplayName="default path" Name="defaultpath" From="_oY2lzeOCEduPAb4MANvU-g" To="_oY2lzuOCEduPAb4MANvU-g">
          <xpdl2:Condition Type="OTHERWISE"/>
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="1.0" YCoordinate="-30.0"/>
              <xpdl2:Coordinates XCoordinate="-79.0" YCoordinate="3.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l4uOCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2lzuOCEduPAb4MANvU-g" To="_oY2l1-OCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="48.94053476825268" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l4-OCEduPAb4MANvU-g" xpdExt:DisplayName="decision = &quot;cancel all&quot;" Name="decisioncancelall" From="_oY2lzeOCEduPAb4MANvU-g" To="_oY2l2uOCEduPAb4MANvU-g">
          <xpdl2:Condition Type="CONDITION">
<xpdl2:Expression ScriptGrammar="javascript"/>
</xpdl2:Condition>
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="20.0" YCoordinate="46.0"/>
              <xpdl2:Coordinates XCoordinate="-108.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l5OOCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2l2uOCEduPAb4MANvU-g" To="_oY2l2eOCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l5eOCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2lzOOCEduPAb4MANvU-g" To="_oY2l1OOCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="23.0" YCoordinate="14.0"/>
              <xpdl2:Coordinates XCoordinate="-31.0" YCoordinate="-32.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="60.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l5uOCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2l3OOCEduPAb4MANvU-g" To="_oY2l3eOCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="1.511203341945974" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="48.94053476825268" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_oY2l5-OCEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_oY2l1OOCEduPAb4MANvU-g" To="_oY2l2-OCEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_oY2l6OOCEduPAb4MANvU-g.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="56,162,54,59"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="235,77,43,45"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="336,16,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="114,68,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="157,198,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_6" Value="10,0,231,17"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_7" Value="466,33,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_8" Value="0,170,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_9" Value="466,151,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_10" Value="352,151,65,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_11" Value="335,215,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_12" Value="225,247,46,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_13" Value="335,274,30,44"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
