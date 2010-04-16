<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_0os1gI33Ed2zaKmu6x991g" Name="ComplexRouterwithmultipleincomingpaths">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description/>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" Name="Pool" Process="_b6uRKuOCEduPAb4MANvU-g">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="458.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:Associations>
    <xpdl2:Association Id="_AI1CEI3-Ed2zaKmu6x991g" Name="" AssociationDirection="None" Source="_0h_h8Y39Ed2zaKmu6x991g" Target="_9aMRkI39Ed2zaKmu6x991g">
      <xpdl2:Object Id="_AI1CEY3-Ed2zaKmu6x991g"/>
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:Association>
    <xpdl2:Association Id="_FeqeUo3-Ed2zaKmu6x991g" Name="" AssociationDirection="None" Source="_0h_h8I39Ed2zaKmu6x991g" Target="_C7DSEI3-Ed2zaKmu6x991g">
      <xpdl2:Object Id="_FeqeU43-Ed2zaKmu6x991g"/>
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:Association>
  </xpdl2:Associations>
  <xpdl2:Artifacts>
    <xpdl2:Artifact Id="_9aMRkI39Ed2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Compex Router&#13;&#10;(iProcess doesn't allow a Condition as first step)">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="43.0" LaneId="_Fragment_Dummy_Lane_" Width="161.0">
          <xpdl2:Coordinates XCoordinate="90.0" YCoordinate="340.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_C7DSEI3-Ed2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Complex Router with multiple incoming paths">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_Fragment_Dummy_Lane_" Width="114.0">
          <xpdl2:Coordinates XCoordinate="489.0" YCoordinate="329.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_b6uRKuOCEduPAb4MANvU-g" xpdExt:DisplayName="Complex Router with multiple incoming paths" Name="ComplexRouterwithmultipleincomingpaths">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="_bFQGUJwiEd2-V4H1CvFFfg" xpdExt:DisplayName="SW_STARTER" Name="SW_STARTER">
          <xpdl2:ParticipantType Type="HUMAN"/>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h6Y39Ed2zaKmu6x991g" Name="onepathonly" xpdExt:DisplayName="one path only">
          <xpdl2:Route GatewayType="Exclusive" MarkerVisible="true" ExclusiveType="Data"/>
          <xpdl2:TransitionRestrictions>
            <xpdl2:TransitionRestriction>
              <xpdl2:Split Type="Exclusive" ExclusiveType="Data">
                <xpdl2:TransitionRefs>
                  <xpdl2:TransitionRef Id="_0h_h-Y39Ed2zaKmu6x991g"/>
                  <xpdl2:TransitionRef Id="_0h_h-o39Ed2zaKmu6x991g"/>
                </xpdl2:TransitionRefs>
              </xpdl2:Split>
            </xpdl2:TransitionRestriction>
          </xpdl2:TransitionRestrictions>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="59.0" LaneId="_Fragment_Dummy_Lane_" Width="68.0">
              <xpdl2:Coordinates XCoordinate="239.0" YCoordinate="250.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h6o39Ed2zaKmu6x991g" Name="EAIStep" IsATransaction="false" xpdExt:DisplayName="EAI Step">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Web Service" Implementation="WebService">
                <xpdl2:MessageIn Id="_0h_h6439Ed2zaKmu6x991g"/>
                <xpdl2:MessageOut Id="_0h_h7I39Ed2zaKmu6x991g"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_Fragment_Dummy_Lane_" Width="96.0">
              <xpdl2:Coordinates XCoordinate="353.0" YCoordinate="312.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h7Y39Ed2zaKmu6x991g" Name="UserStep" IsATransaction="false" xpdExt:DisplayName="User Step">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_0h_h7o39Ed2zaKmu6x991g"/>
                <xpdl2:MessageOut Id="_0h_h7439Ed2zaKmu6x991g"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_bFQGUJwiEd2-V4H1CvFFfg</xpdl2:Performer>
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
              <xpdl2:Coordinates XCoordinate="353.0" YCoordinate="198.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h8I39Ed2zaKmu6x991g" Name="mergepaths" xpdExt:DisplayName="merge paths">
          <xpdl2:Route GatewayType="Exclusive" MarkerVisible="true" ExclusiveType="Data"/>
          <xpdl2:TransitionRestrictions>
            <xpdl2:TransitionRestriction>
              <xpdl2:Join Type="Exclusive" ExclusiveType="Data"/>
            </xpdl2:TransitionRestriction>
          </xpdl2:TransitionRestrictions>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="59.0" LaneId="_Fragment_Dummy_Lane_" Width="62.0">
              <xpdl2:Coordinates XCoordinate="468.0" YCoordinate="257.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h8Y39Ed2zaKmu6x991g">
          <xpdl2:Route GatewayType="Parallel"/>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="42.0" LaneId="_Fragment_Dummy_Lane_" Width="40.0">
              <xpdl2:Coordinates XCoordinate="179.0" YCoordinate="250.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h8o39Ed2zaKmu6x991g" Name="Stop" xpdExt:DisplayName="Stop">
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
              <xpdl2:Coordinates XCoordinate="533.0" YCoordinate="258.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0h_h8439Ed2zaKmu6x991g" Name="Start" xpdExt:DisplayName="Start">
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
              <xpdl2:Coordinates XCoordinate="120.0" YCoordinate="251.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_0h_h-I39Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h8Y39Ed2zaKmu6x991g" To="_0h_h6Y39Ed2zaKmu6x991g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="75.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0h_h-Y39Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h6Y39Ed2zaKmu6x991g" To="_0h_h7Y39Ed2zaKmu6x991g">
          <xpdl2:Condition Type="CONDITION">
<xpdl2:Expression ScriptGrammar="javascript"/>
</xpdl2:Condition>
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="1.0" YCoordinate="-31.0"/>
              <xpdl2:Coordinates XCoordinate="-65.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="60.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0h_h-o39Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h6Y39Ed2zaKmu6x991g" To="_0h_h6o39Ed2zaKmu6x991g">
          <xpdl2:Condition Type="OTHERWISE"/>
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="38.0" YCoordinate="11.0"/>
              <xpdl2:Coordinates XCoordinate="-38.0" YCoordinate="-56.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="59.68750000000001" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0h_h-439Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h7Y39Ed2zaKmu6x991g" To="_0h_h8I39Ed2zaKmu6x991g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="68.0" YCoordinate="0.0"/>
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="-39.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="1.2191496227354268" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="10.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0h_h_I39Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h6o39Ed2zaKmu6x991g" To="_0h_h8I39Ed2zaKmu6x991g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="28.0" YCoordinate="-34.0"/>
              <xpdl2:Coordinates XCoordinate="-40.0" YCoordinate="25.0"/>
              <xpdl2:Coordinates XCoordinate="28.0" YCoordinate="-54.0"/>
              <xpdl2:Coordinates XCoordinate="-40.0" YCoordinate="5.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="75.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="10.625" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0h_h_Y39Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h8I39Ed2zaKmu6x991g" To="_0h_h8o39Ed2zaKmu6x991g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="51.059465231747325" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0h_h_o39Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" From="_0h_h8439Ed2zaKmu6x991g" To="_0h_h8Y39Ed2zaKmu6x991g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="99.11671385559328" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_b6uRKuOCEduPAb4MANvU-g.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="100,62,68,59"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="200,114,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="200,0,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="332,69,62,59"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="53,62,43,45"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_6" Value="406,139,124,30"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_7" Value="9,139,150,43"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_8" Value="413,77,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_9" Value="0,70,30,44"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
