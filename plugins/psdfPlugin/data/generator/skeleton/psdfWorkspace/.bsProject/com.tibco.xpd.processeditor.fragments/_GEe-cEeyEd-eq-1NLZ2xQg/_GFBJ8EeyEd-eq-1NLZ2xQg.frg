<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_2kmyUIDiEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-09-12T17:52:50BST</xpdl2:Created>
    <xpdl2:Description/>
    <xpdl2:Documentation/>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>rsomayaj</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_Fragment_Dummy_Pool__3tee4IDiEd28P6TQ-F95eg" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_2kmyUYDiEd28P6TQ-F95eg">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_Fragment_Dummy_Lane__3tee4YDiEd28P6TQ-F95eg" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="515.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_2kmyUYDiEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage-Process" Name="ProcessPackageProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description/>
      </xpdl2:ProcessHeader>
      <xpdl2:ActivitySets>
        <xpdl2:ActivitySet Id="_3tee6IDiEd28P6TQ-F95eg">
          <xpdl2:Activities>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_3tee6YDiEd28P6TQ-F95eg" Name="End" xpdExt:DisplayName="End">
              <xpdl2:Event>
                <xpdl2:EndEvent Result="None"/>
              </xpdl2:Event>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" Width="30.0">
                  <xpdl2:Coordinates XCoordinate="278.0" YCoordinate="75.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_3tee6oDiEd28P6TQ-F95eg" Name="Start" xpdExt:DisplayName="Start">
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
            <xpdl2:Transition Id="_3tee64DiEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_3tee6oDiEd28P6TQ-F95eg" To="_3tee6YDiEd28P6TQ-F95eg">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
          </xpdl2:Transitions>
        </xpdl2:ActivitySet>
      </xpdl2:ActivitySets>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_3tee54DiEd28P6TQ-F95eg" Name="EmbeddedSubProcess" xpdExt:DisplayName="Embedded Sub-Process">
          <xpdl2:BlockActivity View="EXPANDED" ActivitySetId="_3tee6IDiEd28P6TQ-F95eg"/>
          <xpdl2:ExtendedAttributes>
            <xpdl2:ExtendedAttribute Name="SplitSimulationData">
<simulation:SplitSimulationData>
                <simulation:ParameterDeterminedSplit>true</simulation:ParameterDeterminedSplit>
                <simulation:SplitParameter ParameterId=""/>
              </simulation:SplitSimulationData>
</xpdl2:ExtendedAttribute>
          </xpdl2:ExtendedAttributes>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,230,138" Height="192.0" LaneId="_Fragment_Dummy_Lane__3tee4YDiEd28P6TQ-F95eg" Width="333.0">
              <xpdl2:Coordinates XCoordinate="186.5" YCoordinate="116.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
		<xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="0,0,335,193"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
