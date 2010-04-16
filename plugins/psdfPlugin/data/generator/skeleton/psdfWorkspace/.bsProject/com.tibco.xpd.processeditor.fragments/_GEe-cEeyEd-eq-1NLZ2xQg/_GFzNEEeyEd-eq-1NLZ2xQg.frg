<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:orchestrator="http://www.tibco.com/XPD/orchestrator1.0.0" xmlns:order="http://www.tibco.com/XPD/order1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_C5NB8CTuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="ProcessPackage" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2009-04-09</xpdl2:Created>
    <xpdl2:Description></xpdl2:Description>
    <xpdl2:Documentation></xpdl2:Documentation>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>bharge</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool__EhqNgCTuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_C5NB8STuEd6I7aJ0RYGzYQ">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane__EhqNgSTuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="338.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_C5NB8STuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="ProcessPackage-Process" Name="ProcessPackageProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:ActivitySets>
        <xpdl2:ActivitySet Id="_EhqNhyTuEd6I7aJ0RYGzYQ">
          <xpdl2:Activities>
            <xpdl2:Activity Id="_EhqNiCTuEd6I7aJ0RYGzYQ" Name="End" xpdExt:DisplayName="End">
              <xpdl2:Event>
                <xpdl2:EndEvent Result="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="278.0" YCoordinate="75.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity Id="_EhqNiSTuEd6I7aJ0RYGzYQ" Name="Start" xpdExt:DisplayName="Start">
              <xpdl2:Event>
                <xpdl2:StartEvent Trigger="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="22.0" YCoordinate="75.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
          </xpdl2:Activities>
          <xpdl2:Transitions>
            <xpdl2:Transition Id="_EhqNiiTuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="" Name="" From="_EhqNiSTuEd6I7aJ0RYGzYQ" To="_EhqNiCTuEd6I7aJ0RYGzYQ">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
          </xpdl2:Transitions>
        </xpdl2:ActivitySet>
      </xpdl2:ActivitySets>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_EhqNiyTuEd6I7aJ0RYGzYQ" Name="EmbeddedSubProcess" xpdExt:DisplayName="Embedded Sub-Process">
          <xpdl2:BlockActivity ActivitySetId="_EhqNhyTuEd6I7aJ0RYGzYQ"/>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:DataFields>
            <xpdl2:DataField Id="_FpoiMCTuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="Field" Name="Field" ReadOnly="false">
              <xpdl2:DataType>
                <xpdl2:BasicType Type="STRING">
                  <xpdl2:Length>50</xpdl2:Length>
                </xpdl2:BasicType>
              </xpdl2:DataType>
            </xpdl2:DataField>
            <xpdl2:DataField Id="_GDkFICTuEd6I7aJ0RYGzYQ" xpdExt:DisplayName="Field2" Name="Field2" ReadOnly="false">
              <xpdl2:DataType>
                <xpdl2:BasicType Type="STRING">
                  <xpdl2:Length>50</xpdl2:Length>
                </xpdl2:BasicType>
              </xpdl2:DataType>
            </xpdl2:DataField>
          </xpdl2:DataFields>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,230,138" Height="192.0" LaneId="_Fragment_Dummy_Lane__EhqNgSTuEd6I7aJ0RYGzYQ" Width="333.0">
              <xpdl2:Coordinates XCoordinate="186.5" YCoordinate="116.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>