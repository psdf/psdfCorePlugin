<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:iProcessExt1.0.0="http://www.tibco.com/XPD/iProcessExt1.0.0" xmlns:orchestrator1.0.0="http://www.tibco.com/XPD/orchestrator1.0.0" xmlns:order1.0.0="http://www.tibco.com/XPD/order1.0.0" xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_5-oAAGWNEd6oJedOmyoJMA" xpdExt:DisplayName="iPC Package Template" Name="ProcessPackage">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2009-06-30</xpdl2:Created>
    <xpdl2:Description></xpdl2:Description>
    <xpdl2:Documentation></xpdl2:Documentation>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>mtorres</xpdl2:Author>
    <xpdl2:Version>1.0.0.qualifier</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:ExternalPackages>
    <xpdl2:ExternalPackage Id="_5-oABWWNEd6oJedOmyoJMA" xpdExt:DisplayName="" href="Sample Processes">
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="location" Value="/Sample Processes.xpdl"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:ExternalPackage>
  </xpdl2:ExternalPackages>
  <xpdl2:Participants>
    <xpdl2:Participant Id="_5-oAAWWNEd6oJedOmyoJMA" xpdExt:DisplayName="COMUsers" Name="COMUsers">
      <xpdl2:ParticipantType Type="ROLE"/>
      <iProcessExt1.0.0:ParticipantProperties UseRoleSemantics="false"/>
    </xpdl2:Participant>
  </xpdl2:Participants>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_5-oABmWNEd6oJedOmyoJMA" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_5-oADGWNEd6oJedOmyoJMA">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_5-oAB2WNEd6oJedOmyoJMA" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="314.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
    <xpdl2:Pool Id="_FzLE42WREd6PYY5FBn3-0A" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_FzLEwGWREd6PYY5FBn3-0A">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_FzLE5GWREd6PYY5FBn3-0A" xpdExt:DisplayName="Lane" Name="Lane">
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
    <xpdl2:WorkflowProcess Id="_5-oADGWNEd6oJedOmyoJMA" iProcessExt1.0.0:NextParamSequenceNum="3" xpdExt:DisplayName="Fulfilment Process" Name="IPCFULFI">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:DataFields>
        <xpdl2:DataField Id="_5-xxB2WNEd6oJedOmyoJMA" xpdExt:DisplayName="SWO_AMENDINDEX" Name="SWO_AMENDINDEX" ReadOnly="false">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="INTEGER">
              <xpdl2:Precision>4</xpdl2:Precision>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_5-xxCGWNEd6oJedOmyoJMA" xpdExt:DisplayName="SWO_ORDERNUMBER" Name="SWO_ORDERNUMBER" ReadOnly="false">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>24</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_5-xxCWWNEd6oJedOmyoJMA" xpdExt:DisplayName="SWO_ORDERREF" Name="SWO_ORDERREF">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_5-xxCmWNEd6oJedOmyoJMA" xpdExt:DisplayName="SWO_PLANID" Name="SWO_PLANID">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_5-xxC2WNEd6oJedOmyoJMA" xpdExt:DisplayName="SWO_UNIQUEID" Name="SWO_UNIQUEID">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_5-xxDGWNEd6oJedOmyoJMA" xpdExt:DisplayName="aArray" Name="aArray" IsArray="true" ReadOnly="false">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
          <xpdl2:InitialValue/>
        </xpdl2:DataField>
      </xpdl2:DataFields>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_5-oADWWNEd6oJedOmyoJMA" Name="StartEvent" xpdExt:Visibility="Private" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="27.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="27.0">
              <xpdl2:Coordinates XCoordinate="55.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:AssociatedParameters/>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oADmWNEd6oJedOmyoJMA" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="51.0">
              <xpdl2:Coordinates XCoordinate="1058.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAD2WNEd6oJedOmyoJMA" Name="Input" xpdExt:Visibility="Private" xpdExt:DisplayName="Input">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_5-oAEGWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_5-oAEWWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_5-oAAWWNEd6oJedOmyoJMA</xpdl2:Performer>
          </xpdl2:Performers>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="96.0">
              <xpdl2:Coordinates XCoordinate="153.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Offer="OfferAll" xpdExt:Strategy="SYSTEM_DETERMINED"/>
            <xpdExt:WorkItemPriority InitialPriority="50"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
            <iProcessExt1.0.0:UserTask Forwardable="false" CopyEnabled="false"/>
          </iProcessExt1.0.0:TaskProperties>
          <xpdExt:AssociatedParameters>
            <xpdExt:AssociatedParameter FormalParam="SWO_PLANID" Mode="OUT" Mandatory="false">
              <xpdl2:Description></xpdl2:Description>
            </xpdExt:AssociatedParameter>
            <xpdExt:AssociatedParameter FormalParam="SWO_ORDERNUMBER" Mode="OUT" Mandatory="false">
              <xpdl2:Description></xpdl2:Description>
            </xpdExt:AssociatedParameter>
          </xpdExt:AssociatedParameters>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAEmWNEd6oJedOmyoJMA" Name="Feasibility" xpdExt:Visibility="Private" xpdExt:DisplayName="Feasibility">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Order" Implementation="Other">
                <xpdl2:MessageIn Id="_5-oAE2WNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_5-oAFGWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
                <order1.0.0:Order>
                  <order1.0.0:OrderIdentification order1.0.0:OrderPrimaryKeyField="_5-xxCGWNEd6oJedOmyoJMA" order1.0.0:OrderAmendmentIndexField="_5-xxB2WNEd6oJedOmyoJMA"/>
                  <order1.0.0:OrderStateChange order1.0.0:Transition="Feasibility"/>
                  <order1.0.0:OrderLineStateChange>
                    <order1.0.0:XPathSelection>/:order/:lines/:line/:status</order1.0.0:XPathSelection>
                  </order1.0.0:OrderLineStateChange>
                  <order1.0.0:ExceptionHandling/>
                </order1.0.0:Order>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="96.0">
              <xpdl2:Coordinates XCoordinate="333.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAFWWNEd6oJedOmyoJMA" Name="Cancel" xpdExt:Visibility="Private" xpdExt:DisplayName="Cancel">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive xpdExt:ImplementationType="Unspecified" Implementation="Unspecified">
                <xpdl2:Message Id="_5-oAFmWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
              </xpdl2:TaskReceive>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="96.0">
              <xpdl2:Coordinates XCoordinate="314.0" YCoordinate="45.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAF2WNEd6oJedOmyoJMA" Name="update" xpdExt:Visibility="Private" xpdExt:DisplayName="update">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive xpdExt:ImplementationType="Unspecified" Implementation="Unspecified">
                <xpdl2:Message Id="_5-oAGGWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
              </xpdl2:TaskReceive>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="96.0">
              <xpdl2:Coordinates XCoordinate="362.0" YCoordinate="261.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAGWWNEd6oJedOmyoJMA" Name="getPlan" xpdExt:Visibility="Private" xpdExt:DisplayName="getPlan">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskUser Implementation="Unspecified">
                <xpdl2:Performers>
                  <xpdl2:Performer>-defined-in-Activity-Performer-</xpdl2:Performer>
                </xpdl2:Performers>
                <xpdl2:MessageIn Id="_5-oAGmWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_5-oAG2WNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
              </xpdl2:TaskUser>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:Performers>
            <xpdl2:Performer>_5-oAAWWNEd6oJedOmyoJMA</xpdl2:Performer>
          </xpdl2:Performers>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="96.0">
              <xpdl2:Coordinates XCoordinate="532.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Offer="OfferAll" xpdExt:Strategy="SYSTEM_DETERMINED"/>
            <xpdExt:WorkItemPriority InitialPriority="50"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
            <iProcessExt1.0.0:UserTask Forwardable="false" CopyEnabled="false"/>
          </iProcessExt1.0.0:TaskProperties>
          <xpdExt:AssociatedParameters>
            <xpdExt:AssociatedParameter FormalParam="SWO_UNIQUEID" Mode="OUT" Mandatory="false">
              <xpdl2:Description></xpdl2:Description>
            </xpdExt:AssociatedParameter>
          </xpdExt:AssociatedParameters>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAHGWNEd6oJedOmyoJMA" Name="start" xpdExt:Visibility="Public" xpdExt:DisplayName="start">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Orchestrator" Implementation="Other">
                <xpdl2:MessageIn Id="_5-oAHWWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_5-oAHmWNEd6oJedOmyoJMA" xpdExt:DisplayName=""/>
                <orchestrator1.0.0:Orchestrator>
                  <orchestrator1.0.0:OrchestratorMessageInformation orchestrator1.0.0:MessageType="Start Plan"/>
                  <orchestrator1.0.0:StartPlanMessageInformation orchestrator1.0.0:GraftStepName="_5-oAH2WNEd6oJedOmyoJMA" orchestrator1.0.0:ExecutionPlanIdOverrideField="_5-xxC2WNEd6oJedOmyoJMA" orchestrator1.0.0:OrchestratorStepName="_5-oAFWWNEd6oJedOmyoJMA">
                    <orchestrator1.0.0:OrderPlanType/>
                  </orchestrator1.0.0:StartPlanMessageInformation>
                </orchestrator1.0.0:Orchestrator>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="96.0">
              <xpdl2:Coordinates XCoordinate="724.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAH2WNEd6oJedOmyoJMA" Name="graf" FinishMode="Automatic" StartMode="Automatic" xpdExt:Visibility="Private" xpdExt:DisplayName="graf">
          <xpdl2:Implementation>
            <xpdl2:SubFlow Id="_5-oAAmWNEd6oJedOmyoJMA" xpdExt:ProcessIdentifierField="aArray"/>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="80.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="128.0">
              <xpdl2:Coordinates XCoordinate="949.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
            <iProcessExt1.0.0:DynamicSubProcessTask IsGraftStep="true" HaltOnBadSubProcess="false" HaltOnBadIOTemplate="false" HaltOnBadIOTemplateVersion="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_5-oAIGWNEd6oJedOmyoJMA" Name="end" xpdExt:Visibility="Private" xpdExt:DisplayName="end">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="27.0" LaneId="_5-oAB2WNEd6oJedOmyoJMA" Width="27.0">
              <xpdl2:Coordinates XCoordinate="713.0" YCoordinate="33.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_5-xxAGWNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oAH2WNEd6oJedOmyoJMA" To="_5-oADmWNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_5-xxAWWNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oADWWNEd6oJedOmyoJMA" To="_5-oAD2WNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_5-xxAmWNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oAD2WNEd6oJedOmyoJMA" To="_5-oAEmWNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_5-xxA2WNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oAEmWNEd6oJedOmyoJMA" To="_5-oAGWWNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_5-xxBGWNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oAGWWNEd6oJedOmyoJMA" To="_5-oAHGWNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_5-xxBWWNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oAHGWNEd6oJedOmyoJMA" To="_5-oAH2WNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="61.53846153846154" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_5-xxBmWNEd6oJedOmyoJMA" xpdExt:DisplayName="" Name="" From="_5-oAFWWNEd6oJedOmyoJMA" To="_5-oAIGWNEd6oJedOmyoJMA">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.LabelAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="iProcess"/>
        <xpdl2:ExtendedAttribute Name="Destination" Value="iProcess"/>
      </xpdl2:ExtendedAttributes>
      <iProcessExt1.0.0:ProcessProperties UseWorkingDays="true" IgnoreBlankAddressees="false" EnableCasePrediction="false" NormaliseCaseData="true" CaseDescOnStart="Required" AutoPurge="false"/>
    </xpdl2:WorkflowProcess>
    <xpdl2:WorkflowProcess Id="_FzLEwGWREd6PYY5FBn3-0A" iProcessExt1.0.0:NextParamSequenceNum="3" xpdExt:DisplayName="Process Component" Name="IPCPC">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:DataFields>
        <xpdl2:DataField Id="_FzLE3GWREd6PYY5FBn3-0A" xpdExt:DisplayName="SWO_AMENDINDEX" Name="SWO_AMENDINDEX" ReadOnly="false">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="INTEGER">
              <xpdl2:Precision>4</xpdl2:Precision>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_FzLE3WWREd6PYY5FBn3-0A" xpdExt:DisplayName="SWO_ORDERNUMBER" Name="SWO_ORDERNUMBER" ReadOnly="false">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>24</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_FzLE3mWREd6PYY5FBn3-0A" xpdExt:DisplayName="SWO_ORDERREF" Name="SWO_ORDERREF">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_FzLE32WREd6PYY5FBn3-0A" xpdExt:DisplayName="SWO_PLANID" Name="SWO_PLANID">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_FzLE4GWREd6PYY5FBn3-0A" xpdExt:DisplayName="SWO_UNIQUEID" Name="SWO_UNIQUEID">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:DataField>
        <xpdl2:DataField Id="_FzLE4WWREd6PYY5FBn3-0A" xpdExt:DisplayName="aArray" Name="aArray" IsArray="true" ReadOnly="false">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
          <xpdl2:InitialValue/>
        </xpdl2:DataField>
      </xpdl2:DataFields>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_FzLEwmWREd6PYY5FBn3-0A" Name="EndEvent" xpdExt:DisplayName="End Event">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="51.0">
              <xpdl2:Coordinates XCoordinate="1058.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_FzLExmWREd6PYY5FBn3-0A" Name="StartTask" xpdExt:Visibility="Public" xpdExt:DisplayName="Start Task">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Orchestrator" Implementation="Other">
                <xpdl2:MessageIn Id="_KIL9MGWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_KIL9MWWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
                <orchestrator1.0.0:Orchestrator>
                  <orchestrator1.0.0:OrchestratorMessageInformation/>
                </orchestrator1.0.0:Orchestrator>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="96.0">
              <xpdl2:Coordinates XCoordinate="176.0" YCoordinate="156.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_FzLEyWWREd6PYY5FBn3-0A" Name="Cancel" xpdExt:Visibility="Private" xpdExt:DisplayName="Cancel">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskReceive xpdExt:ImplementationType="Unspecified" Implementation="Unspecified">
                <xpdl2:Message Id="_FzLEymWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
              </xpdl2:TaskReceive>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="96.0">
              <xpdl2:Coordinates XCoordinate="314.0" YCoordinate="45.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_FzLE0GWREd6PYY5FBn3-0A" Name="TaskComplete" xpdExt:Visibility="Public" xpdExt:DisplayName="Task Complete">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Orchestrator" Implementation="Other">
                <xpdl2:MessageIn Id="_FzLE0WWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_FzLE0mWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
                <orchestrator1.0.0:Orchestrator>
                  <orchestrator1.0.0:OrchestratorMessageInformation orchestrator1.0.0:MessageType="Task Complete"/>
                </orchestrator1.0.0:Orchestrator>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="96.0">
              <xpdl2:Coordinates XCoordinate="768.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_FzLE1GWREd6PYY5FBn3-0A" Name="end" xpdExt:Visibility="Private" xpdExt:DisplayName="end">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="27.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="27.0">
              <xpdl2:Coordinates XCoordinate="713.0" YCoordinate="33.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_MXYYoGWREd6PYY5FBn3-0A" Name="OrderStep" xpdExt:Visibility="Private" xpdExt:DisplayName="Order Step">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="Order" Implementation="Other">
                <xpdl2:MessageIn Id="_NnjAAGWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_NnjAAWWREd6PYY5FBn3-0A" xpdExt:DisplayName=""/>
                <order1.0.0:Order>
                  <order1.0.0:OrderIdentification order1.0.0:OrderPrimaryKeyField="_FzLE3WWREd6PYY5FBn3-0A" order1.0.0:OrderAmendmentIndexField="_FzLE3GWREd6PYY5FBn3-0A"/>
                  <order1.0.0:OrderStateChange/>
                  <order1.0.0:OrderLineStateChange>
                    <order1.0.0:XPathSelection>/:order/:lines/:line/:status</order1.0.0:XPathSelection>
                  </order1.0.0:OrderLineStateChange>
                  <order1.0.0:ExceptionHandling/>
                </order1.0.0:Order>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="96.0">
              <xpdl2:Coordinates XCoordinate="470.0" YCoordinate="155.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
          <xpdExt:ActivityResourcePatterns>
            <xpdExt:AllocationStrategy xpdExt:Strategy="SYSTEM_DETERMINED"/>
          </xpdExt:ActivityResourcePatterns>
          <iProcessExt1.0.0:TaskProperties NoDeleteOnWithdraw="false" IgnoreCaseSuspend="false">
            <iProcessExt1.0.0:Prediction UseDeadlineForDuration="false" DontIncludeAsFutureWorkItem="false"/>
          </iProcessExt1.0.0:TaskProperties>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_qF86UGWREd6PYY5FBn3-0A" Name="StartEvent" xpdExt:Implements="_pBjeEGWREd6PYY5FBn3-0A" xpdExt:Visibility="Public" xpdExt:DisplayName="Start Event">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="192,192,192" Height="45.0" LaneId="_FzLE5GWREd6PYY5FBn3-0A" Width="57.0">
              <xpdl2:Coordinates XCoordinate="52.0" YCoordinate="163.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_FzLE2GWREd6PYY5FBn3-0A" xpdExt:DisplayName="" Name="" From="_MXYYoGWREd6PYY5FBn3-0A" To="_FzLE0GWREd6PYY5FBn3-0A">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_FzLE22WREd6PYY5FBn3-0A" xpdExt:DisplayName="" Name="" From="_FzLEyWWREd6PYY5FBn3-0A" To="_FzLE1GWREd6PYY5FBn3-0A">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.LabelAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_MXYYo2WREd6PYY5FBn3-0A" xpdExt:DisplayName="" Name="" From="_FzLExmWREd6PYY5FBn3-0A" To="_MXYYoGWREd6PYY5FBn3-0A">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_YtSlYGWREd6PYY5FBn3-0A" xpdExt:DisplayName="" Name="" From="_FzLE0GWREd6PYY5FBn3-0A" To="_FzLEwmWREd6PYY5FBn3-0A">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.LabelAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_rwV_kGWREd6PYY5FBn3-0A" xpdExt:DisplayName="" Name="" From="_qF86UGWREd6PYY5FBn3-0A" To="_FzLExmWREd6PYY5FBn3-0A">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.LabelAnchorPosition">
              <xpdl2:Coordinates XCoordinate="50.0" YCoordinate="0.0"/>
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="iProcess"/>
        <xpdl2:ExtendedAttribute Name="Destination" Value="iProcess"/>
      </xpdl2:ExtendedAttributes>
      <iProcessExt1.0.0:ProcessProperties UseWorkingDays="true" IgnoreBlankAddressees="false" EnableCasePrediction="false" NormaliseCaseData="true" CaseDescOnStart="Required" AutoPurge="false"/>
      <xpdExt:ImplementedInterface xpdExt:ProcessInterfaceId="_nvmG8GWREd6PYY5FBn3-0A"/>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
  <xpdExt:ProcessInterfaces>
    <xpdExt:ProcessInterface Id="_5-oAAmWNEd6oJedOmyoJMA" iProcessExt1.0.0:NextParamSequenceNum="2" xpdExt:DisplayName="graft-Interface" Name="graftInterface">
      <xpdl2:FormalParameters>
        <xpdl2:FormalParameter Id="_5-oAA2WNEd6oJedOmyoJMA" Name="Plan" IsArray="false" Mode="INOUT" Required="false" iProcessExt1.0.0:SequenceNum="1" xpdExt:DisplayName="Plan">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:FormalParameter>
      </xpdl2:FormalParameters>
      <xpdExt:StartMethods>
        <xpdExt:StartMethod Id="_5-oABGWNEd6oJedOmyoJMA" xpdExt:DisplayName="Start Event" Name="StartEvent" Visibility="Public"/>
      </xpdExt:StartMethods>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="iProcess"/>
      </xpdl2:ExtendedAttributes>
    </xpdExt:ProcessInterface>
    <xpdExt:ProcessInterface Id="_nvmG8GWREd6PYY5FBn3-0A" iProcessExt1.0.0:NextParamSequenceNum="2" xpdExt:DisplayName="ipcpc-Interface" Name="ipcpcInterface">
      <xpdl2:FormalParameters>
        <xpdl2:FormalParameter Id="_za4pYGWREd6PYY5FBn3-0A" Name="parameter" Mode="INOUT" Required="true" iProcessExt1.0.0:SequenceNum="1" xpdExt:DisplayName="parameter">
          <xpdl2:DataType>
            <xpdl2:BasicType Type="STRING">
              <xpdl2:Length>50</xpdl2:Length>
            </xpdl2:BasicType>
          </xpdl2:DataType>
        </xpdl2:FormalParameter>
      </xpdl2:FormalParameters>
      <xpdExt:StartMethods>
        <xpdExt:StartMethod Id="_pBjeEGWREd6PYY5FBn3-0A" xpdExt:DisplayName="Start Event" Name="StartEvent" Visibility="Public"/>
      </xpdExt:StartMethods>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="iProcess"/>
      </xpdl2:ExtendedAttributes>
    </xpdExt:ProcessInterface>
  </xpdExt:ProcessInterfaces>
</xpdl2:Package>
