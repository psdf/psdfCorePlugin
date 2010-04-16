<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" Name="TwoTaskTransaction">
  <xpdl2:PackageHeader>
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Description/>
  </xpdl2:PackageHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool_" Name="Pool" Process="_ROSRyvT0EdyOfOdLaJfyeg">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane_" Name="Lane"/>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:MessageFlows/>
  <xpdl2:Associations/>
  <xpdl2:Artifacts/>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_ROSRyvT0EdyOfOdLaJfyeg" Name="TwoTaskTransaction" xpdExt:DisplayName="Two Task Transaction">
      <xpdl2:ProcessHeader>
        <xpdl2:Description/>
      </xpdl2:ProcessHeader>
      <xpdl2:ActivitySets>
        <xpdl2:ActivitySet Id="_ROSRtvT0EdyOfOdLaJfyeg">
          <xpdl2:Activities>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRt_T0EdyOfOdLaJfyeg" Name="Start" xpdExt:DisplayName="Start" xpdExt:Visibility="Private">
              <xpdl2:Event>
                <xpdl2:StartEvent Trigger="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="20.0" YCoordinate="74.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRuPT0EdyOfOdLaJfyeg" Name="ServiceTask" xpdExt:DisplayName="Service Task" xpdExt:Visibility="Private">
              <xpdl2:Implementation>
                <xpdl2:Task>
                  <xpdl2:TaskService Implementation="Unspecified">
                    <xpdl2:MessageIn Id="_ROSRufT0EdyOfOdLaJfyeg"/>
                    <xpdl2:MessageOut Id="_ROSRuvT0EdyOfOdLaJfyeg"/>
                  </xpdl2:TaskService>
                </xpdl2:Task>
              </xpdl2:Implementation>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" Width="96.0">
                  <xpdl2:Coordinates XCoordinate="115.0" YCoordinate="74.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRu_T0EdyOfOdLaJfyeg">
              <xpdl2:Route ExclusiveType="Data" GatewayType="Exclusive" MarkerVisible="true"/>
              <xpdl2:TransitionRestrictions>
                <xpdl2:TransitionRestriction>
                  <xpdl2:Split ExclusiveType="Data" Type="Exclusive">
                    <xpdl2:TransitionRefs>
                      <xpdl2:TransitionRef Id="_ROSRwfT0EdyOfOdLaJfyeg"/>
                      <xpdl2:TransitionRef Id="_ROSRwvT0EdyOfOdLaJfyeg"/>
                    </xpdl2:TransitionRefs>
                  </xpdl2:Split>
                </xpdl2:TransitionRestriction>
              </xpdl2:TransitionRestrictions>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="45.0" Width="43.0">
                  <xpdl2:Coordinates XCoordinate="332.0" YCoordinate="71.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRvPT0EdyOfOdLaJfyeg" Name="End" xpdExt:DisplayName="End" xpdExt:Visibility="Private">
              <xpdl2:Event>
                <xpdl2:EndEvent Result="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="367.0" YCoordinate="29.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRvfT0EdyOfOdLaJfyeg" Name="Abort" xpdExt:DisplayName="Abort">
              <xpdl2:Event>
                <xpdl2:EndEvent Result="Cancel"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="367.0" YCoordinate="116.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRvvT0EdyOfOdLaJfyeg" Name="ServiceTask2" xpdExt:DisplayName="Service Task 2" xpdExt:Visibility="Private">
              <xpdl2:Implementation>
                <xpdl2:Task>
                  <xpdl2:TaskService Implementation="Unspecified">
                    <xpdl2:MessageIn Id="_ROSRv_T0EdyOfOdLaJfyeg"/>
                    <xpdl2:MessageOut Id="_ROSRwPT0EdyOfOdLaJfyeg"/>
                  </xpdl2:TaskService>
                </xpdl2:Task>
              </xpdl2:Implementation>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" Width="96.0">
                  <xpdl2:Coordinates XCoordinate="237.0" YCoordinate="74.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
          </xpdl2:Activities>
          <xpdl2:Transitions>
            <xpdl2:Transition From="_ROSRu_T0EdyOfOdLaJfyeg" Id="_ROSRwfT0EdyOfOdLaJfyeg" Name="" To="_ROSRvPT0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
              <xpdl2:Condition Type="OTHERWISE"/>
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
                <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
                  <xpdl2:Coordinates XCoordinate="96.94469320923768" YCoordinate="0.0"/>
                </xpdl2:ConnectorGraphicsInfo>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition From="_ROSRu_T0EdyOfOdLaJfyeg" Id="_ROSRwvT0EdyOfOdLaJfyeg" Name="" To="_ROSRvfT0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
              <xpdl2:Condition Type="CONDITION">
<xpdl2:Expression/>
</xpdl2:Condition>
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition From="_ROSRvvT0EdyOfOdLaJfyeg" Id="_ROSRw_T0EdyOfOdLaJfyeg" Name="" To="_ROSRu_T0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
                <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition From="_ROSRt_T0EdyOfOdLaJfyeg" Id="_ROSRxPT0EdyOfOdLaJfyeg" Name="" To="_ROSRuPT0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
            <xpdl2:Transition From="_ROSRuPT0EdyOfOdLaJfyeg" Id="_ROSRxfT0EdyOfOdLaJfyeg" Name="" To="_ROSRvvT0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
                <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
                  <xpdl2:Coordinates XCoordinate="9.6875" YCoordinate="0.0"/>
                </xpdl2:ConnectorGraphicsInfo>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
          </xpdl2:Transitions>
        </xpdl2:ActivitySet>
      </xpdl2:ActivitySets>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRtfT0EdyOfOdLaJfyeg" IsATransaction="true" Name="Transaction" xpdExt:DisplayName="Transaction">
          <xpdl2:BlockActivity View="EXPANDED" ActivitySetId="_ROSRtvT0EdyOfOdLaJfyeg"/>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,230,138" Height="215.0" LaneId="_Fragment_Dummy_Lane_" Width="428.0">
              <xpdl2:Coordinates XCoordinate="343.0" YCoordinate="135.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRxvT0EdyOfOdLaJfyeg" Name="StartEvent" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" LaneId="_Fragment_Dummy_Lane_" Width="56.0">
              <xpdl2:Coordinates XCoordinate="55.0" YCoordinate="136.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" Id="_ROSRx_T0EdyOfOdLaJfyeg" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="46.0" LaneId="_Fragment_Dummy_Lane_" Width="52.0">
              <xpdl2:Coordinates XCoordinate="615.0" YCoordinate="136.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition From="_ROSRtfT0EdyOfOdLaJfyeg" Id="_ROSRyPT0EdyOfOdLaJfyeg" Name="" To="_ROSRx_T0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition From="_ROSRxvT0EdyOfOdLaJfyeg" Id="_ROSRyfT0EdyOfOdLaJfyeg" Name="" To="_ROSRtfT0EdyOfOdLaJfyeg" xpdExt:DisplayName="">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
      	<xpdl2:ExtendedAttribute Name="Destination" Value="com.tibco.xpd.iprocess.globalDestination::iProcess"/>
        <xpdl2:ExtendedAttribute Name="FragmentPaletteImage" Value="_ROSRyvT0EdyOfOdLaJfyeg.bmp"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="102,0,428,215"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_2" Value="0,93,56,46"/>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_3" Value="562,93,52,46"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="IsCustomFragmentCategory" Value="false"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
