<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_zF-3QI2DEd2zaKmu6x991g" Name="EventreleasewithdrawsaninlineEvent">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description></xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_ZuM51uODEduPAb4MANvU-g">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" xpdExt:DisplayName="null" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="350.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:Artifacts>
    <xpdl2:Artifact Id="_d-h_II4BEd2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Note the two different ways of representing iProcess Events:- when defined using an Intermediate Event (&quot;Wait for Document&quot;) they can only have one output sequence- when defined using a Receive Task (&quot;Wait for Phone Call&quot;) they can have boundary (exception) conditions ">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="69.0" LaneId="_Fragment_Dummy_Lane_" Width="359.0">
          <xpdl2:Coordinates XCoordinate="71.0" YCoordinate="44.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_ZuM51uODEduPAb4MANvU-g" xpdExt:DisplayName="Event release withdraws an inline Event" Name="EventreleasewithdrawsaninlineEvent">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_ZuM5weODEduPAb4MANvU-g" Name="bothpaths" xpdExt:DisplayName="both paths">
          <xpdl2:Route GatewayType="Parallel"/>
          <xpdl2:TransitionRestrictions>
            <xpdl2:TransitionRestriction>
              <xpdl2:Split Type="Parallel">
                <xpdl2:TransitionRefs>
                  <xpdl2:TransitionRef Id="_ZuM5zuODEduPAb4MANvU-g"/>
                  <xpdl2:TransitionRef Id="_ZuM51OODEduPAb4MANvU-g"/>
                </xpdl2:TransitionRefs>
              </xpdl2:Split>
            </xpdl2:TransitionRestriction>
          </xpdl2:TransitionRestrictions>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="59.0" LaneId="_Fragment_Dummy_Lane_" Width="54.0">
              <xpdl2:Coordinates XCoordinate="99.0" YCoordinate="214.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5wuODEduPAb4MANvU-g" Name="WaitforPhonecall" IsATransaction="false" xpdExt:DisplayName="Wait for Phone call">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive Implementation="Unspecified" Instantiate="false">
                <xpdl2:Message Id="_ZuM5w-ODEduPAb4MANvU-g"/>
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="73.0" LaneId="_Fragment_Dummy_Lane_" Width="102.0">
              <xpdl2:Coordinates XCoordinate="205.0" YCoordinate="214.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5xeODEduPAb4MANvU-g" Name="Start" xpdExt:DisplayName="Start">
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
              <xpdl2:Coordinates XCoordinate="43.0" YCoordinate="215.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5xuODEduPAb4MANvU-g" Name="End1" xpdExt:DisplayName="End1">
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
              <xpdl2:Coordinates XCoordinate="405.0" YCoordinate="99.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5x-ODEduPAb4MANvU-g" Name="WaitforDocument" xpdExt:DisplayName="Wait for Document">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="50.0">
              <xpdl2:Coordinates XCoordinate="168.0" YCoordinate="99.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5yOODEduPAb4MANvU-g" Name="ThrowCancellation" xpdExt:DisplayName="Throw Cancellation">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="60.0">
              <xpdl2:Coordinates XCoordinate="256.0" YCoordinate="99.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5yeODEduPAb4MANvU-g" Name="CatchCancellation" xpdExt:DisplayName="Catch Cancellation">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_ZuM5wuODEduPAb4MANvU-g" Trigger="Signal">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="57.0" LaneId="_Fragment_Dummy_Lane_" Width="60.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo LaneId="_Fragment_Dummy_Lane_" ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="20.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5yuODEduPAb4MANvU-g" Name="End3" xpdExt:DisplayName="End3">
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
              <xpdl2:Coordinates XCoordinate="405.0" YCoordinate="251.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5y-ODEduPAb4MANvU-g" Name="end4" xpdExt:DisplayName="end4">
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
              <xpdl2:Coordinates XCoordinate="405.0" YCoordinate="188.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5zOODEduPAb4MANvU-g" Name="Deadline" xpdExt:DisplayName="Deadline">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_ZuM5wuODEduPAb4MANvU-g" Trigger="Timer">
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
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_Fragment_Dummy_Lane_" Width="43.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo LaneId="_Fragment_Dummy_Lane_" ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="48.4375" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ZuM5zeODEduPAb4MANvU-g" Name="End4" xpdExt:DisplayName="End4">
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
              <xpdl2:Coordinates XCoordinate="405.0" YCoordinate="307.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_ZuM5zuODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5weODEduPAb4MANvU-g" To="_ZuM5x-ODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="20.0" YCoordinate="-94.0"/>
              <xpdl2:Coordinates XCoordinate="-61.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM5z-ODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5x-ODEduPAb4MANvU-g" To="_ZuM5yOODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM50OODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5yOODEduPAb4MANvU-g" To="_ZuM5xuODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM50eODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5yeODEduPAb4MANvU-g" To="_ZuM5yuODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="52.94990424337643" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM50uODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5xeODEduPAb4MANvU-g" To="_ZuM5weODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="98.86510645000698" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM50-ODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5wuODEduPAb4MANvU-g" To="_ZuM5y-ODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="48.865106450006984" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM51OODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5weODEduPAb4MANvU-g" To="_ZuM5wuODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="25.862068965517242" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_ZuM51eODEduPAb4MANvU-g" xpdExt:DisplayName="" Name="" From="_ZuM5zOODEduPAb4MANvU-g" To="_ZuM5zeODEduPAb4MANvU-g">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="6.0" YCoordinate="42.0"/>
              <xpdl2:Coordinates XCoordinate="-223.0" YCoordinate="3.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="21.640345256385526" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="48.020828791971724" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_ZuM51uODEduPAb4MANvU-g.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="44,196,54,59"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="126,182,102,73"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="17,0,355,69"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="0,204,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="362,88,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_6" Value="115,88,50,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_7" Value="198,88,60,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_8" Value="198,237,60,57"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_9" Value="362,240,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_10" Value="362,177,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_11" Value="110,240,43,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_12" Value="362,296,30,44"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
