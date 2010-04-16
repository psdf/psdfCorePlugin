<?xml version="1.0" encoding="UTF-8"?>
<xpdl2:Package xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:database="http://www.tibco.com/XPD/database1.0.0" xmlns:eaijava="http://www.tibco.com/XPD/EAIJava1.0.0" xmlns:email="http://www.tibco.com/XPD/email1.0.0" xmlns:iProcessExt="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:simulation="http://www.tibco.com/xpd/Simulation1.0.1" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" xsi:schemaLocation="http://www.wfmc.org/2008/XPDL2.1 http://www.wfmc.org/standards/bpmnxpdl_31.xsd" Id="_OK0LcIDfEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-09-12T17:26:50BST</xpdl2:Created>
    <xpdl2:Description></xpdl2:Description>
    <xpdl2:Documentation></xpdl2:Documentation>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>rsomayaj</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_OtFyGIDfEd28P6TQ-F95eg" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_OK0LcYDfEd28P6TQ-F95eg">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_OtFyGYDfEd28P6TQ-F95eg" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="180.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_OK0LcYDfEd28P6TQ-F95eg" xpdExt:DisplayName="ProcessPackage-Process" Name="ProcessPackageProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:ActivitySets>
        <xpdl2:ActivitySet Id="_OtFyK4DfEd28P6TQ-F95eg">
          <xpdl2:Activities>
            <xpdl2:Activity Id="_OtFyLIDfEd28P6TQ-F95eg" Name="Enrichincomingdatawithexternaldata" xpdExt:DisplayName="Enrich incoming data with external data">
              <xpdl2:Implementation>
                <xpdl2:Task>
                  <xpdl2:TaskService xpdExt:ImplementationType="Web Service" Implementation="WebService">
                    <xpdl2:MessageIn Id="_OtFyLYDfEd28P6TQ-F95eg"/>
                    <xpdl2:MessageOut Id="_OtFyLoDfEd28P6TQ-F95eg"/>
                  </xpdl2:TaskService>
                </xpdl2:Task>
              </xpdl2:Implementation>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="90.0" Width="103.0">
                  <xpdl2:Coordinates XCoordinate="195.0" YCoordinate="65.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
            <xpdl2:Activity Id="_OtFyL4DfEd28P6TQ-F95eg" Name="Fetchexternaldata" xpdExt:DisplayName="Fetch external data">
              <xpdl2:Implementation>
                <xpdl2:Task>
                  <xpdl2:TaskService xpdExt:ImplementationType="Web Service" Implementation="WebService">
                    <xpdl2:MessageIn Id="_OtFyMIDfEd28P6TQ-F95eg"/>
                    <xpdl2:MessageOut Id="_OtFyMYDfEd28P6TQ-F95eg"/>
                  </xpdl2:TaskService>
                </xpdl2:Task>
              </xpdl2:Implementation>
              <xpdl2:NodeGraphicsInfos>
                <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="90.0" Width="102.0">
                  <xpdl2:Coordinates XCoordinate="71.0" YCoordinate="65.0"/>
                </xpdl2:NodeGraphicsInfo>
              </xpdl2:NodeGraphicsInfos>
            </xpdl2:Activity>
          </xpdl2:Activities>
          <xpdl2:Transitions>
            <xpdl2:Transition Id="_OtFyMoDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_OtFyL4DfEd28P6TQ-F95eg" To="_OtFyLIDfEd28P6TQ-F95eg">
              <xpdl2:ConnectorGraphicsInfos>
                <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
              </xpdl2:ConnectorGraphicsInfos>
            </xpdl2:Transition>
          </xpdl2:Transitions>
        </xpdl2:ActivitySet>
      </xpdl2:ActivitySets>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_OtFyGoDfEd28P6TQ-F95eg">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="Message">
              <xpdl2:TriggerResultMessage CatchThrow="CATCH">
                <xpdl2:Message Id="_OtFyG4DfEd28P6TQ-F95eg"/>
                <xpdl2:WebServiceOperation>
                  <xpdl2:Service>
                    <xpdl2:EndPoint/>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
              </xpdl2:TriggerResultMessage>
            </xpdl2:StartEvent>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_OtFyGYDfEd28P6TQ-F95eg" Width="30.0">
              <xpdl2:Coordinates XCoordinate="48.0" YCoordinate="95.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_OtFyHIDfEd28P6TQ-F95eg" Name="Validateincomingdata" xpdExt:DisplayName="Validate incoming data">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskScript>
                <xpdl2:Script/>
              </xpdl2:TaskScript>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="109.0" LaneId="_OtFyGYDfEd28P6TQ-F95eg" Width="113.0">
              <xpdl2:Coordinates XCoordinate="142.0" YCoordinate="94.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_OtFyHYDfEd28P6TQ-F95eg" Name="Standardisedatatoenterpriseconceptmodel" xpdExt:DisplayName="Standardise data to enterprise concept model">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Web Service" Implementation="WebService">
                <xpdl2:MessageIn Id="_OtFyHoDfEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="_OtFyH4DfEd28P6TQ-F95eg"/>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="108.0" LaneId="_OtFyGYDfEd28P6TQ-F95eg" Width="114.0">
              <xpdl2:Coordinates XCoordinate="600.0" YCoordinate="95.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_OtFyIIDfEd28P6TQ-F95eg" Name="Enrich" xpdExt:DisplayName="Enrich">
          <xpdl2:BlockActivity ActivitySetId="_OtFyK4DfEd28P6TQ-F95eg" View="EXPANDED"/>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,230,138" Height="165.0" LaneId="_OtFyGYDfEd28P6TQ-F95eg" Width="287.0">
              <xpdl2:Coordinates XCoordinate="374.0" YCoordinate="87.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_OtFyIYDfEd28P6TQ-F95eg" Name="ReplyToUnnamedEvent" xpdExt:DisplayName="Reply To: &lt;Unnamed Event>">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="Message">
              <xpdl2:TriggerResultMessage xpdExt:ReplyToActivityId="_OtFyGoDfEd28P6TQ-F95eg" CatchThrow="THROW">
                <xpdl2:Message Id="_OtFyIoDfEd28P6TQ-F95eg"/>
                <xpdl2:WebServiceOperation>
                  <xpdl2:Service>
                    <xpdl2:EndPoint/>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
              </xpdl2:TriggerResultMessage>
            </xpdl2:EndEvent>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_OtFyGYDfEd28P6TQ-F95eg" Width="30.0">
              <xpdl2:Coordinates XCoordinate="840.0" YCoordinate="95.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_OtFyI4DfEd28P6TQ-F95eg" Name="Transformtotheoutgoingdataformat" xpdExt:DisplayName="Transform to the outgoing data format">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Web Service" Implementation="WebService">
                <xpdl2:MessageIn Id="_OtFyJIDfEd28P6TQ-F95eg"/>
                <xpdl2:MessageOut Id="_OtFyJYDfEd28P6TQ-F95eg"/>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="108.0" LaneId="_OtFyGYDfEd28P6TQ-F95eg" Width="111.0">
              <xpdl2:Coordinates XCoordinate="742.0" YCoordinate="95.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_OtFyJoDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_OtFyGoDfEd28P6TQ-F95eg" To="_OtFyHIDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_OtFyJ4DfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_OtFyHIDfEd28P6TQ-F95eg" To="_OtFyIIDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_OtFyKIDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_OtFyIIDfEd28P6TQ-F95eg" To="_OtFyHYDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_OtFyKYDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_OtFyI4DfEd28P6TQ-F95eg" To="_OtFyIYDfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_OtFyKoDfEd28P6TQ-F95eg" xpdExt:DisplayName="" Name="" From="_OtFyHYDfEd28P6TQ-F95eg" To="_OtFyI4DfEd28P6TQ-F95eg">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="FragmentFeedbackRect_1" Value="0,0,937,184"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>