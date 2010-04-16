<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_zmIL0IDeEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-09-12T17:23:52BST</xpdl2:Created>
    <xpdl2:Description/>
    <xpdl2:Documentation/>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>rsomayaj</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_0KVsKYDeEd28P6TQ-F95eg" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_zmIL0YDeEd28P6TQ-F95eg">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_0KVsKoDeEd28P6TQ-F95eg" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="314.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_zmIL0YDeEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage-Process" Name="ProcessPackageProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description/>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0KVsK4DeEd28P6TQ-F95eg" Name="StartEvent" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="27.0" LaneId="_0KVsKoDeEd28P6TQ-F95eg" Width="27.0">
              <xpdl2:Coordinates XCoordinate="95.0" YCoordinate="154.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0KVsLIDeEd28P6TQ-F95eg" Name="Task" FinishMode="Manual" StartMode="Manual" xpdExt:DisplayName="Task">
          <xpdl2:Implementation>
            <xpdl2:No/>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="64.0" LaneId="_0KVsKoDeEd28P6TQ-F95eg" Width="96.0">
              <xpdl2:Coordinates XCoordinate="223.0" YCoordinate="154.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:database="http://www.tibco.com/XPD/database1.0.0" Id="_0KVsLYDeEd28P6TQ-F95eg" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="27.0" LaneId="_0KVsKoDeEd28P6TQ-F95eg" Width="27.0">
              <xpdl2:Coordinates XCoordinate="351.0" YCoordinate="154.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_0KVsLoDeEd28P6TQ-F95eg" From="_0KVsK4DeEd28P6TQ-F95eg" To="_0KVsLIDeEd28P6TQ-F95eg"/>
        <xpdl2:Transition Id="_0KVsL4DeEd28P6TQ-F95eg" From="_0KVsLIDeEd28P6TQ-F95eg" To="_0KVsLYDeEd28P6TQ-F95eg"/>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
		<xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="0,0,700,318"/>
	</xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
