<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_4ma-wM2yEd2NxpZWSyO2Ew" xpdExt:DisplayName="Pageflow Package" Name="PageflowPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-12-19</xpdl2:Created>
    <xpdl2:Description></xpdl2:Description>
    <xpdl2:Documentation></xpdl2:Documentation>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>NWilson</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_960QkM2yEd2NxpZWSyO2Ew" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_4ma-wc2yEd2NxpZWSyO2Ew">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_960Qkc2yEd2NxpZWSyO2Ew" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="314.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
    </xpdl2:Pool>
    <xpdl2:Pool Id="_AjY1UM2zEd2NxpZWSyO2Ew" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="__HBlAM2yEd2NxpZWSyO2Ew">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_AjY1Uc2zEd2NxpZWSyO2Ew" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="300.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_4ma-wc2yEd2NxpZWSyO2Ew" xpdExt:DisplayName="Business-Process" Name="BusinessProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_960Qks2yEd2NxpZWSyO2Ew" Name="StartEvent" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="27.0" LaneId="_960Qkc2yEd2NxpZWSyO2Ew" Width="27.0">
              <xpdl2:Coordinates XCoordinate="55.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_960Qk82yEd2NxpZWSyO2Ew" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_960Qkc2yEd2NxpZWSyO2Ew" Width="30.0">
              <xpdl2:Coordinates XCoordinate="592.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_G2bgsM2zEd2NxpZWSyO2Ew" Name="UserTask" xpdExt:Visibility="Private" xpdExt:DisplayName="User Task">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_G2bgsc2zEd2NxpZWSyO2Ew" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_G2bgss2zEd2NxpZWSyO2Ew" xpdExt:DisplayName=""/>
                <xpdExt:FormImplementation FormType="Pageflow" FormURI="platform:/resource/Pageflow/Process%20Packages/package_template.xpdl#__HBlAM2yEd2NxpZWSyO2Ew"/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="bpmJspTask" Value="platform:/resource/Pageflow/Process%20Packages/package_template.xpdl#__HBlAM2yEd2NxpZWSyO2Ew"/>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_960Qkc2yEd2NxpZWSyO2Ew" Width="96.0">
              <xpdl2:Coordinates XCoordinate="316.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Offer="OfferAll" xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_960QlM2yEd2NxpZWSyO2Ew" xpdExt:DisplayName="" Name="" From="_G2bgsM2zEd2NxpZWSyO2Ew" To="_960Qk82yEd2NxpZWSyO2Ew">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_G2bgs82zEd2NxpZWSyO2Ew" xpdExt:DisplayName="" Name="" From="_960Qks2yEd2NxpZWSyO2Ew" To="_G2bgsM2zEd2NxpZWSyO2Ew">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
    </xpdl2:WorkflowProcess>
    <xpdl2:WorkflowProcess Id="__HBlAM2yEd2NxpZWSyO2Ew" xpdExt:Pageflow="true" xpdExt:DisplayName="Pageflow-Process" Name="PageflowProcess">
      <xpdl2:Activities>
        <xpdl2:Activity Id="_B3h9wM2zEd2NxpZWSyO2Ew" Name="Start" xpdExt:Visibility="Private" xpdExt:DisplayName="Start">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="143,191,251" Height="27.0" LaneId="_AjY1Uc2zEd2NxpZWSyO2Ew" Width="27.0">
              <xpdl2:Coordinates XCoordinate="71.0" YCoordinate="150.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_ClX7MM2zEd2NxpZWSyO2Ew" Name="End" xpdExt:Visibility="Private" xpdExt:DisplayName="End">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="143,191,251" Height="30.0" LaneId="_AjY1Uc2zEd2NxpZWSyO2Ew" Width="30.0">
              <xpdl2:Coordinates XCoordinate="441.0" YCoordinate="150.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_DM6cUM2zEd2NxpZWSyO2Ew" xpdExt:DisplayName="" Name="" From="_B3h9wM2zEd2NxpZWSyO2Ew" To="_ClX7MM2zEd2NxpZWSyO2Ew">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
