<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_Ig6koEeyEd-eq-1NLZ2xQg" Name="SingleTaskTransaction">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description></xpdl2:Description>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" xpdExt:DisplayName="null" Name="Pool" Process="_4vfKAAYWEd20nMGzlxsBXA">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" xpdExt:DisplayName="null" Name="Lane"/>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_4vfKAAYWEd20nMGzlxsBXA" xpdExt:DisplayName="Single Task Transaction" Name="SingleTaskTransaction">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:ActivitySets>
        <xpdl2:ActivitySet Id="_4vLoAQYWEd20nMGzlxsBXA">
          <xpdl2:Activities>
            <xpdl2:Activity Id="_4vLoAgYWEd20nMGzlxsBXA" Name="Start" xpdExt:Visibility="Private" xpdExt:DisplayName="Start">
              <xpdl2:Event>
                <xpdl2:StartEvent Trigger="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="20.0" YCoordinate="74.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity Id="_4vLoAwYWEd20nMGzlxsBXA" Name="ServiceTask" xpdExt:Visibility="Private" xpdExt:DisplayName="Service Task">
              <xpdl2:Implementation>
                <xpdl2:Task>
                  <xpdl2:TaskService Implementation="Unspecified">
                    <xpdl2:MessageIn Id="_4vLoBAYWEd20nMGzlxsBXA"/>
                    <xpdl2:MessageOut Id="_4vLoBQYWEd20nMGzlxsBXA"/>
                  </xpdl2:TaskService>
                </xpdl2:Task>
              </xpdl2:Implementation>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" Width="96.0">
                  <xpdl2:Coordinates XCoordinate="127.0" YCoordinate="74.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity Id="_4vLoBgYWEd20nMGzlxsBXA" xpdExt:DisplayName="">
              <xpdl2:Route GatewayType="Exclusive" MarkerVisible="true" ExclusiveType="Data"/>
              <xpdl2:TransitionRestrictions>
                <xpdl2:TransitionRestriction>
                  <xpdl2:Split Type="Exclusive" ExclusiveType="Data">
                    <xpdl2:TransitionRefs>
                      <xpdl2:TransitionRef Id="_4vLoCQYWEd20nMGzlxsBXA"/>
                      <xpdl2:TransitionRef Id="_4vLoCgYWEd20nMGzlxsBXA"/>
                    </xpdl2:TransitionRefs>
                  </xpdl2:Split>
                </xpdl2:TransitionRestriction>
              </xpdl2:TransitionRestrictions>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="45.0" Width="43.0">
                  <xpdl2:Coordinates XCoordinate="229.0" YCoordinate="73.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity Id="_4vLoBwYWEd20nMGzlxsBXA" Name="End" xpdExt:Visibility="Private" xpdExt:DisplayName="End">
              <xpdl2:Event>
                <xpdl2:EndEvent Result="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="264.0" YCoordinate="31.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity Id="_4vLoCAYWEd20nMGzlxsBXA" Name="Abort" xpdExt:DisplayName="Abort">
              <xpdl2:Event>
                <xpdl2:EndEvent Result="Cancel"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="264.0" YCoordinate="118.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
          </xpdl2:Activities>
          <xpdl2:Transitions>
            <xpdl2:Transition Id="_4vLoCQYWEd20nMGzlxsBXA" xpdExt:DisplayName="" Name="" From="_4vLoBgYWEd20nMGzlxsBXA" To="_4vLoBwYWEd20nMGzlxsBXA">
              <xpdl2:Condition Type="OTHERWISE"/>
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
                <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
                  <xpdl2:Coordinates XCoordinate="96.94469320923768" YCoordinate="0.0"/>
                </xpdl2:ConnectorGraphicsInfo>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition Id="_4vLoCgYWEd20nMGzlxsBXA" xpdExt:DisplayName="" Name="" From="_4vLoBgYWEd20nMGzlxsBXA" To="_4vLoCAYWEd20nMGzlxsBXA">
              <xpdl2:Condition Type="CONDITION">
<xpdl2:Expression/>
</xpdl2:Condition>
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition Id="_4vLoCwYWEd20nMGzlxsBXA" xpdExt:DisplayName="" Name="" From="_4vLoAgYWEd20nMGzlxsBXA" To="_4vLoAwYWEd20nMGzlxsBXA">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition Id="_4vLoDAYWEd20nMGzlxsBXA" xpdExt:DisplayName="" Name="" From="_4vLoAwYWEd20nMGzlxsBXA" To="_4vLoBgYWEd20nMGzlxsBXA">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
          </xpdl2:Transitions>
        </xpdl2:ActivitySet>
      </xpdl2:ActivitySets>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_4vLoAAYWEd20nMGzlxsBXA" Name="Transaction" IsATransaction="true" xpdExt:DisplayName="Transaction">
          <xpdl2:BlockActivity ActivitySetId="_4vLoAQYWEd20nMGzlxsBXA" View="EXPANDED"/>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,230,138" Height="215.0" LaneId="_Fragment_Dummy_Lane_" Width="325.0">
              <xpdl2:Coordinates XCoordinate="284.0" YCoordinate="147.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_4vLoDQYWEd20nMGzlxsBXA" Name="StartEvent" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" LaneId="_Fragment_Dummy_Lane_" Width="56.0">
              <xpdl2:Coordinates XCoordinate="48.0" YCoordinate="148.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_4vLoDgYWEd20nMGzlxsBXA" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" LaneId="_Fragment_Dummy_Lane_" Width="52.0">
              <xpdl2:Coordinates XCoordinate="520.0" YCoordinate="148.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_4vLoDwYWEd20nMGzlxsBXA" xpdExt:DisplayName="" Name="" From="_4vLoAAYWEd20nMGzlxsBXA" To="_4vLoDgYWEd20nMGzlxsBXA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_4vLoEAYWEd20nMGzlxsBXA" xpdExt:DisplayName="" Name="" From="_4vLoDQYWEd20nMGzlxsBXA" To="_4vLoAAYWEd20nMGzlxsBXA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_4vfKAAYWEd20nMGzlxsBXA.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="102,0,325,215"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="0,93,56,46"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="474,93,52,46"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
