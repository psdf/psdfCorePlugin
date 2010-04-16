<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_IcO48EeyEd-eq-1NLZ2xQg" Name="SendAndReceive">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description>Add your own diagram fragments using &lt;Ctrl>+Drag from diagram editor or Copy fragment in editor and Paste here.</xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_L_fnusy-EduR1uGW23ZqoQ">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" xpdExt:DisplayName="null" Name="Lane"/>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_L_fnusy-EduR1uGW23ZqoQ" xpdExt:DisplayName="Send And Receive" Name="SendAndReceive">
      <xpdl2:ProcessHeader>
        <xpdl2:Description>Send and receive a message.</xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_L_fntcy-EduR1uGW23ZqoQ" Name="ReceiveTask" IsATransaction="false" xpdExt:DisplayName="Receive Task">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive Implementation="Unspecified" Instantiate="false">
                <xpdl2:Message Id="_L_fntsy-EduR1uGW23ZqoQ"/>
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
              <xpdl2:Coordinates XCoordinate="351.0" YCoordinate="218.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_L_fnt8y-EduR1uGW23ZqoQ" Name="SendTask" IsATransaction="false" xpdExt:DisplayName="Send Task">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskSend Implementation="Unspecified">
                <xpdl2:Message Id="_L_fnuMy-EduR1uGW23ZqoQ"/>
              </xpdl2:TaskSend>
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
              <xpdl2:Coordinates XCoordinate="159.0" YCoordinate="218.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_L_fnucy-EduR1uGW23ZqoQ" xpdExt:DisplayName="" Name="" From="_L_fnt8y-EduR1uGW23ZqoQ" To="_L_fntcy-EduR1uGW23ZqoQ">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_L_fnusy-EduR1uGW23ZqoQ.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="192,0,96,64"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="0,0,96,64"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
