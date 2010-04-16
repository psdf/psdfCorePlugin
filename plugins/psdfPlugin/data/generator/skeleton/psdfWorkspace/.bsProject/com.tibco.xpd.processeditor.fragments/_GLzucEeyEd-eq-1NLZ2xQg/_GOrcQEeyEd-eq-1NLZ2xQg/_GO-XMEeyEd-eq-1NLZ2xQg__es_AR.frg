<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_zI950I2DEd2zaKmu6x991g" Name="UserStepwithEscalationandWithdrawal">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description></xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_N9asxP71EduRnKf2Rd_RwQ">
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
    <xpdl2:Association Id="_pay5AI3_Ed2zaKmu6x991g" xpdExt:DisplayName="" Name="" AssociationDirection="None" Source="_N9asuf71EduRnKf2Rd_RwQ" Target="_k7fcII3_Ed2zaKmu6x991g">
      <xpdl2:Object Id="_pay5AY3_Ed2zaKmu6x991g"/>
      <xpdl2:ConnectorGraphicsInfos>
        <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128"/>
      </xpdl2:ConnectorGraphicsInfos>
    </xpdl2:Association>
  </xpdl2:Associations>
  <xpdl2:Artifacts>
    <xpdl2:Artifact Id="_Z2J1Q_71EduRnKf2Rd_RwQ" ArtifactType="Annotation" TextAnnotation="Note: The Deadline event is configured to &quot;Continue&quot; ">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_YmWsIP7zEduRnKf2Rd_RwQ" Width="143.0">
          <xpdl2:Coordinates XCoordinate="304.5" YCoordinate="310.5"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_Z2J1VP71EduRnKf2Rd_RwQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_N9aswv71EduRnKf2Rd_RwQ" ArtifactType="Annotation" TextAnnotation="The timeout causes the Manual Step to be withdrawn - an escalation is sent out instead and the process does not proceed towards the &quot;end&quot; event.&#xD;&#xA;If the deadline does not expire, the process continues towards the &quot;end&quot; event when the user step is released">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="56.0" LaneId="_7HqPIeHKEduWmpuYMP-IEA" Width="372.0">
          <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="36.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_N9asxP71EduRnKf2Rd_RwQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_N9asw_71EduRnKf2Rd_RwQ" ArtifactType="Annotation" TextAnnotation="Note: The Deadline event is configured to &quot;Withdraw&quot; ">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_7HqPIeHKEduWmpuYMP-IEA" Width="143.0">
          <xpdl2:Coordinates XCoordinate="8.0" YCoordinate="206.0"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_N9asxP71EduRnKf2Rd_RwQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_Z2J1TP71EduRnKf2Rd_RwQ" ArtifactType="Annotation" TextAnnotation="The timeout does not cause the Manual Step to be withdrawn - a reminder is sent out in parallel and the original User Step continues to be available for processing">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="43.0" LaneId="_YmWsIP7zEduRnKf2Rd_RwQ" Width="375.0">
          <xpdl2:Coordinates XCoordinate="320.5" YCoordinate="136.5"/>
        </xpdl2:NodeGraphicsInfo>
        <xpdl2:NodeGraphicsInfo LaneId="_Z2J1VP71EduRnKf2Rd_RwQ" ToolId="XPD.Fragment_ParentProcess_GraphicInfo"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_dJWVgI3_Ed2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="The timeout causes the Manual Step to be withdrawn - an escalation is sent out instead and the process does not proceed towards the &quot;end&quot; event.If the deadline does not expire, the process continues towards the &quot;end&quot; event when the user step is released">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="56.0" LaneId="_Fragment_Dummy_Lane_" Width="374.0">
          <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="44.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
    <xpdl2:Artifact Id="_k7fcII3_Ed2zaKmu6x991g" ArtifactType="Annotation" TextAnnotation="Note: The Deadline event is configured to &quot;Withdraw&quot; ">
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" Height="30.0" LaneId="_Fragment_Dummy_Lane_" Width="155.0">
          <xpdl2:Coordinates XCoordinate="5.0" YCoordinate="214.0"/>
        </xpdl2:NodeGraphicsInfo>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Artifact>
  </xpdl2:Artifacts>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_N9asxP71EduRnKf2Rd_RwQ" xpdExt:DisplayName="User Step with Escalation and Withdrawal" Name="UserStepwithEscalationandWithdrawal">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>New Fragment</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Participants>
        <xpdl2:Participant Id="_uEn6YZwiEd2-V4H1CvFFfg" xpdExt:DisplayName="SW_STARTER" Name="SW_STARTER">
          <xpdl2:ParticipantType Type="HUMAN"/>
        </xpdl2:Participant>
      </xpdl2:Participants>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_N9assv71EduRnKf2Rd_RwQ" Name="UserStep" IsATransaction="false" xpdExt:DisplayName="User Step">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_N9ass_71EduRnKf2Rd_RwQ"/>
                <xpdl2:MessageOut Id="_N9astP71EduRnKf2Rd_RwQ"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_uEn6YZwiEd2-V4H1CvFFfg</xpdl2:Performer>
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
              <xpdl2:Coordinates XCoordinate="141.0" YCoordinate="116.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_N9astf71EduRnKf2Rd_RwQ" Name="Escalation" IsATransaction="false" xpdExt:DisplayName="Escalation">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_N9astv71EduRnKf2Rd_RwQ"/>
                <xpdl2:MessageOut Id="_N9ast_71EduRnKf2Rd_RwQ"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_uEn6YZwiEd2-V4H1CvFFfg</xpdl2:Performer>
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
              <xpdl2:Coordinates XCoordinate="302.0" YCoordinate="214.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_N9asuP71EduRnKf2Rd_RwQ" Name="Start" xpdExt:DisplayName="Start">
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
              <xpdl2:Coordinates XCoordinate="39.0" YCoordinate="116.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_N9asuf71EduRnKf2Rd_RwQ" Name="deadline" xpdExt:DisplayName="deadline">
          <xpdl2:Description>&#xD;
</xpdl2:Description>
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_N9assv71EduRnKf2Rd_RwQ" Trigger="Timer">
              <xpdl2:TriggerTimer/>
            </xpdl2:IntermediateEvent>
          </xpdl2:Event>
          <xpdl2:Deadline>
            <xpdl2:DeadlineDuration ScriptGrammar="javascript">&#xD;
</xpdl2:DeadlineDuration>
          </xpdl2:Deadline>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_Fragment_Dummy_Lane_" Width="42.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo LaneId="_Fragment_Dummy_Lane_" ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="25.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_N9asuv71EduRnKf2Rd_RwQ" Name="End" xpdExt:DisplayName="End">
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
              <xpdl2:Coordinates XCoordinate="290.0" YCoordinate="116.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_N9asu_71EduRnKf2Rd_RwQ" Name="End2" xpdExt:DisplayName="End2">
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
              <xpdl2:Coordinates XCoordinate="404.0" YCoordinate="214.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_N9asvP71EduRnKf2Rd_RwQ" xpdExt:DisplayName="" Name="" From="_N9assv71EduRnKf2Rd_RwQ" To="_N9asuv71EduRnKf2Rd_RwQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_N9asvf71EduRnKf2Rd_RwQ" xpdExt:DisplayName="" Name="" From="_N9asuP71EduRnKf2Rd_RwQ" To="_N9assv71EduRnKf2Rd_RwQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_N9asvv71EduRnKf2Rd_RwQ" xpdExt:DisplayName="" Name="" From="_N9asuf71EduRnKf2Rd_RwQ" To="_N9astf71EduRnKf2Rd_RwQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo">
              <xpdl2:Coordinates XCoordinate="1.0" YCoordinate="52.0"/>
              <xpdl2:Coordinates XCoordinate="-69.0" YCoordinate="2.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="26.669168321526254" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_N9asv_71EduRnKf2Rd_RwQ" xpdExt:DisplayName="" Name="" From="_N9astf71EduRnKf2Rd_RwQ" To="_N9asu_71EduRnKf2Rd_RwQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="9.6875" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_N9asxP71EduRnKf2Rd_RwQ.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="85,76,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="234,175,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="17,0,372,56"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_4" Value="0,183,143,30"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_5" Value="16,93,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_6" Value="144,125,42,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_7" Value="267,93,30,44"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_8" Value="381,191,30,44"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
