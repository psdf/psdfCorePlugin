<?xml version="1.0" encoding="ASCII"?>
<xpdl2:Package xmlns:xpdExt="http://www.tibco.com/XPD/xpdExtension1.0.0" xmlns:xpdl2="http://www.wfmc.org/2008/XPDL2.1" Id="_l2BEAK8XEd2BUfeaOl0GHw" xpdExt:DisplayName="CIM Package Template" Name="CIMPackageTemplate">
  <xpdl2:PackageHeader xpdExt:Language="en_GB">
    <xpdl2:XPDLVersion>2.1</xpdl2:XPDLVersion>
    <xpdl2:Vendor>TIBCO</xpdl2:Vendor>
    <xpdl2:Created>2008-11-10</xpdl2:Created>
    <xpdl2:Description></xpdl2:Description>
    <xpdl2:Documentation></xpdl2:Documentation>
    <xpdl2:CostUnit>GBP</xpdl2:CostUnit>
  </xpdl2:PackageHeader>
  <xpdl2:RedefinableHeader PublicationStatus="UNDER_REVISION">
    <xpdl2:Author>rsomayaj</xpdl2:Author>
    <xpdl2:Version>1.0</xpdl2:Version>
  </xpdl2:RedefinableHeader>
  <xpdl2:TypeDeclarations>
    <xpdl2:TypeDeclaration Id="In_String" xpdExt:DisplayName="In String" Name="InString">
      <xpdl2:BasicType Type="STRING"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="In"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="string"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="Out_String" xpdExt:DisplayName="Out String" Name="OutString">
      <xpdl2:BasicType Type="STRING"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="Out"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="string"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="In_Long" xpdExt:DisplayName="In Long" Name="InLong">
      <xpdl2:BasicType Type="INTEGER"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="In"/>
        <xpdl2:ExtendedAttribute Name="type" Value="long"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="Out_Long" xpdExt:DisplayName="Out Long" Name="OutLong">
      <xpdl2:BasicType Type="INTEGER"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="Out"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="long"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="In_Boolean" xpdExt:DisplayName="In Boolean" Name="InBoolean">
      <xpdl2:BasicType Type="BOOLEAN"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="In"/>
        <xpdl2:ExtendedAttribute Name="type" Value="boolean"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="Out_Boolean" xpdExt:DisplayName="Out Boolean" Name="OutBoolean">
      <xpdl2:BasicType Type="BOOLEAN"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="Out"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="boolean"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="In_Document" xpdExt:DisplayName="In Document" Name="InDocument">
      <xpdl2:ExternalReference location="mlXMLCore.bom" namespace="http://www.eclipse.org/uml2/2.1.0/UML" xref="_BTos0O48Ed2CwI5y0_cmJA"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="In"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="document"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="Out_Document" xpdExt:DisplayName="Out Document" Name="OutDocument">
      <xpdl2:ExternalReference location="mlXMLCore.bom" namespace="http://www.eclipse.org/uml2/2.1.0/UML" xref="_BTos0O48Ed2CwI5y0_cmJA"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="Out"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="document"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="In_ArrayList" xpdExt:DisplayName="In ArrayList" Name="InArrayList">
      <xpdl2:BasicType Type="STRING"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="In"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="arraylist"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="Out_ArrayList" xpdExt:DisplayName="Out ArrayList" Name="OutArrayList">
      <xpdl2:BasicType Type="STRING"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="Out"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="Array"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="In_RecordList" xpdExt:DisplayName="In RecordList" Name="InRecordList">
      <xpdl2:BasicType Type="STRING"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="In"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="recordlist"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
    <xpdl2:TypeDeclaration Id="Out_RecordList" xpdExt:DisplayName="Out RecordList" Name="OutRecordList">
      <xpdl2:BasicType Type="STRING"/>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="direction" Value="Out"/>
        <xpdl2:ExtendedAttribute Name="eval" Value="variable"/>
        <xpdl2:ExtendedAttribute Name="type" Value="recordlist"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:TypeDeclaration>
  </xpdl2:TypeDeclarations>
  <xpdl2:Pools>
    <xpdl2:Pool Id="_0ELL0K8XEd2BUfeaOl0GHw" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_xr4ewK8XEd2BUfeaOl0GHw">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_0ELL0a8XEd2BUfeaOl0GHw" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="362.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
    </xpdl2:Pool>
    <xpdl2:Pool Id="_pA99F68XEd2BUfeaOl0GHw" xpdExt:DisplayName="Pool" Name="Pool" BoundaryVisible="true" Process="_l2BEAa8XEd2BUfeaOl0GHw">
      <xpdl2:Lanes>
        <xpdl2:Lane Id="_pA99GK8XEd2BUfeaOl0GHw" xpdExt:DisplayName="Lane" Name="Lane">
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo Height="300.0"/>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Lane>
      </xpdl2:Lanes>
      <xpdl2:NodeGraphicsInfos>
        <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="223,179,0" IsVisible="true"/>
      </xpdl2:NodeGraphicsInfos>
    </xpdl2:Pool>
  </xpdl2:Pools>
  <xpdl2:WorkflowProcesses>
    <xpdl2:WorkflowProcess Id="_l2BEAa8XEd2BUfeaOl0GHw" xpdExt:DisplayName="CIM Sub Process" Name="CIMSubProcess">
      <xpdl2:ProcessHeader>
        <xpdl2:Description></xpdl2:Description>
      </xpdl2:ProcessHeader>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_pA99Ga8XEd2BUfeaOl0GHw" Name="Start" xpdExt:DisplayName="Start">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_pA99GK8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="103.0" YCoordinate="139.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_pA99Gq8XEd2BUfeaOl0GHw" Name="End" xpdExt:DisplayName="End">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_pA99GK8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="402.0" YCoordinate="139.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_pA99G68XEd2BUfeaOl0GHw" Name="CIMActivity" StartQuantity="1" xpdExt:DisplayName="CIMActivity">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="WebService" Implementation="WebService">
                <xpdl2:MessageIn Id="_X7i5smRwEd6TNdiHFP5kVQ" xpdExt:DisplayName=""/>
                <xpdl2:MessageOut Id="_X7i5s2RwEd6TNdiHFP5kVQ" xpdExt:DisplayName=""/>
                <xpdl2:WebServiceOperation xpdExt:SecurityProfile="" xpdExt:Transport="http://schemas.xmlsoap.org/soap/http" xpdExt:Alias="">
                  <xpdl2:Service xpdExt:IsRemote="true">
                    <xpdl2:EndPoint EndPointType="WSDL">
                      <xpdl2:ExternalReference location="CIMServices.wsdl"/>
                    </xpdl2:EndPoint>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
                <xpdExt:PortTypeOperation PortTypeName="CimActivities" OperationName="NoOperation">
                  <xpdExt:ExternalReference location="CIMServices.wsdl"/>
                </xpdExt:PortTypeOperation>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_pA99GK8XEd2BUfeaOl0GHw" Width="96.0">
              <xpdl2:Coordinates XCoordinate="246.0" YCoordinate="146.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_pA99Hq8XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_pA99Ga8XEd2BUfeaOl0GHw" To="_pA99G68XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="1.9791712080282773" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_pA99H68XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_pA99G68XEd2BUfeaOl0GHw" To="_pA99Gq8XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="8.4375" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.EndAnchorPosition">
              <xpdl2:Coordinates XCoordinate="48.020828791971724" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="CIM"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
    <xpdl2:WorkflowProcess Id="_xr4ewK8XEd2BUfeaOl0GHw" xpdExt:DisplayName="CIM Main Process" Name="CIMMainProcess">
      <xpdl2:ProcessHeader/>
      <xpdl2:Activities>
        <xpdl2:Activity Id="_0ELL0q8XEd2BUfeaOl0GHw" xpdExt:DisplayName="">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_0ELL1K8XEd2BUfeaOl0GHw" Trigger="Cancel"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="48.671096345514954" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL068XEd2BUfeaOl0GHw" Name="Start" xpdExt:DisplayName="Start">
          <xpdl2:Event>
            <xpdl2:StartEvent Trigger="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="82.0" YCoordinate="110.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL1K8XEd2BUfeaOl0GHw" Name="IndependentSubProcess" FinishMode="Automatic" IsATransaction="true" StartMode="Automatic" xpdExt:DisplayName="Independent Sub-Process">
          <xpdl2:Implementation>
            <xpdl2:SubFlow Id="_l2BEAa8XEd2BUfeaOl0GHw"/>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="113.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="188.0">
              <xpdl2:Coordinates XCoordinate="313.0" YCoordinate="109.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL1a8XEd2BUfeaOl0GHw" xpdExt:DisplayName="">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_0ELL1K8XEd2BUfeaOl0GHw" Trigger="Error">
              <xpdl2:ResultError/>
            </xpdl2:IntermediateEvent>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="30.730897009966778" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL1q8XEd2BUfeaOl0GHw" xpdExt:DisplayName="">
          <xpdl2:Event>
            <xpdl2:IntermediateEvent Target="_0ELL1K8XEd2BUfeaOl0GHw" Trigger="Timer">
              <xpdl2:TriggerTimer>
                <xpdl2:TimeDate/>
              </xpdl2:TriggerTimer>
            </xpdl2:IntermediateEvent>
          </xpdl2:Event>
          <xpdl2:Deadline>
            <xpdl2:DeadlineDuration ScriptGrammar="javascript"/>
          </xpdl2:Deadline>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="30.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="0.0" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
            <xpdl2:NodeGraphicsInfo ToolId="XPD.BorderEventPosition">
              <xpdl2:Coordinates XCoordinate="20.431893687707642" YCoordinate="0.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL168XEd2BUfeaOl0GHw" Name="SetstatusToTimeOut" xpdExt:DisplayName="SetstatusToTimeOut">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="WebService" Implementation="WebService">
                <xpdl2:MessageIn Id="_9XSF8mRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="">
                  <xpdl2:DataMappings>
                    <xpdl2:DataMapping Direction="IN" Formal="wso:null/part:parameters/group:sequence[1]/eventState[0]">
                      <xpdExt:ScriptInformation Id="_9xWy0GRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="" Name="eventState_Value">
                        <xpdExt:Expression ScriptGrammar="XPath"/>
                      </xpdExt:ScriptInformation>
                      <xpdl2:Actual ScriptGrammar="XPath">'DONE'</xpdl2:Actual>
                    </xpdl2:DataMapping>
                    <xpdl2:DataMapping Direction="IN" Formal="wso:null/part:parameters/group:sequence[1]/eventStatus[1]">
                      <xpdExt:ScriptInformation Id="_-j304GRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="" Name="eventStatus_Value">
                        <xpdExt:Expression ScriptGrammar="XPath"/>
                      </xpdExt:ScriptInformation>
                      <xpdl2:Actual ScriptGrammar="XPath">'TIMEOUT'</xpdl2:Actual>
                    </xpdl2:DataMapping>
                  </xpdl2:DataMappings>
                </xpdl2:MessageIn>
                <xpdl2:MessageOut Id="_9XSF82RxEd6TNdiHFP5kVQ" xpdExt:DisplayName=""/>
                <xpdl2:WebServiceOperation xpdExt:SecurityProfile="" xpdExt:Transport="http://schemas.xmlsoap.org/soap/http" xpdExt:Alias="">
                  <xpdl2:Service xpdExt:IsRemote="true">
                    <xpdl2:EndPoint EndPointType="WSDL">
                      <xpdl2:ExternalReference location="CIMServices.wsdl"/>
                    </xpdl2:EndPoint>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
                <xpdExt:PortTypeOperation PortTypeName="CimActivities" OperationName="UpdateEvent">
                  <xpdExt:ExternalReference location="CIMServices.wsdl"/>
                </xpdExt:PortTypeOperation>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="123.0">
              <xpdl2:Coordinates XCoordinate="431.0" YCoordinate="239.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL2q8XEd2BUfeaOl0GHw" Name="SetStatusToError" xpdExt:DisplayName="SetStatusToError">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="WebService" Implementation="WebService">
                <xpdl2:MessageIn Id="_b8WnQmRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="">
                  <xpdl2:DataMappings>
                    <xpdl2:DataMapping Direction="IN" Formal="wso:null/part:parameters/group:sequence[1]/eventState[0]">
                      <xpdExt:ScriptInformation Id="_cVijUGRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="" Name="eventState_Value">
                        <xpdExt:Expression ScriptGrammar="XPath"/>
                      </xpdExt:ScriptInformation>
                      <xpdl2:Actual ScriptGrammar="XPath">'DONE'</xpdl2:Actual>
                    </xpdl2:DataMapping>
                    <xpdl2:DataMapping Direction="IN" Formal="wso:null/part:parameters/group:sequence[1]/eventStatus[1]">
                      <xpdExt:ScriptInformation Id="_dZodkGRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="" Name="eventStatus_Value">
                        <xpdExt:Expression ScriptGrammar="XPath"/>
                      </xpdExt:ScriptInformation>
                      <xpdl2:Actual ScriptGrammar="XPath">'ERROR'</xpdl2:Actual>
                    </xpdl2:DataMapping>
                  </xpdl2:DataMappings>
                </xpdl2:MessageIn>
                <xpdl2:MessageOut Id="_b8WnQ2RxEd6TNdiHFP5kVQ" xpdExt:DisplayName=""/>
                <xpdl2:WebServiceOperation xpdExt:SecurityProfile="" xpdExt:Transport="http://schemas.xmlsoap.org/soap/http" xpdExt:Alias="">
                  <xpdl2:Service xpdExt:IsRemote="true">
                    <xpdl2:EndPoint EndPointType="WSDL">
                      <xpdl2:ExternalReference location="CIMServices.wsdl"/>
                    </xpdl2:EndPoint>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
                <xpdExt:PortTypeOperation PortTypeName="CimActivities" OperationName="UpdateEvent">
                  <xpdExt:ExternalReference location="CIMServices.wsdl"/>
                </xpdExt:PortTypeOperation>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="96.0">
              <xpdl2:Coordinates XCoordinate="313.0" YCoordinate="239.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL3a8XEd2BUfeaOl0GHw" Name="SetStatusToCancel" xpdExt:DisplayName="SetStatusToCancel">
          <xpdl2:Implementation>
            <xpdl2:Task>
              <xpdl2:TaskService xpdExt:ImplementationType="WebService" Implementation="WebService">
                <xpdl2:MessageIn Id="_9iiwMmRwEd6TNdiHFP5kVQ" xpdExt:DisplayName="">
                  <xpdl2:DataMappings>
                    <xpdl2:DataMapping Direction="IN" Formal="wso:null/part:parameters/group:sequence[1]/eventState[0]">
                      <xpdExt:ScriptInformation Id="_D8oewGRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="" Name="eventState_Value">
                        <xpdExt:Expression ScriptGrammar="XPath"/>
                      </xpdExt:ScriptInformation>
                      <xpdl2:Actual ScriptGrammar="XPath">'DONE'</xpdl2:Actual>
                    </xpdl2:DataMapping>
                    <xpdl2:DataMapping Direction="IN" Formal="wso:null/part:parameters/group:sequence[1]/eventStatus[1]">
                      <xpdExt:ScriptInformation Id="_FDG-oGRxEd6TNdiHFP5kVQ" xpdExt:DisplayName="" Name="eventStatus_Value">
                        <xpdExt:Expression ScriptGrammar="XPath"/>
                      </xpdExt:ScriptInformation>
                      <xpdl2:Actual ScriptGrammar="XPath">'CANCELLED'</xpdl2:Actual>
                    </xpdl2:DataMapping>
                  </xpdl2:DataMappings>
                </xpdl2:MessageIn>
                <xpdl2:MessageOut Id="_9iiwM2RwEd6TNdiHFP5kVQ" xpdExt:DisplayName=""/>
                <xpdl2:WebServiceOperation xpdExt:SecurityProfile="" xpdExt:Transport="http://schemas.xmlsoap.org/soap/http" xpdExt:Alias="">
                  <xpdl2:Service xpdExt:IsRemote="true">
                    <xpdl2:EndPoint EndPointType="WSDL">
                      <xpdl2:ExternalReference location="CIMServices.wsdl"/>
                    </xpdl2:EndPoint>
                  </xpdl2:Service>
                </xpdl2:WebServiceOperation>
                <xpdExt:PortTypeOperation PortTypeName="CimActivities" OperationName="UpdateEvent">
                  <xpdExt:ExternalReference location="CIMServices.wsdl"/>
                </xpdExt:PortTypeOperation>
              </xpdl2:TaskService>
            </xpdl2:Task>
          </xpdl2:Implementation>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="64.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="96.0">
              <xpdl2:Coordinates XCoordinate="204.0" YCoordinate="239.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
        <xpdl2:Activity Id="_0ELL4K8XEd2BUfeaOl0GHw" Name="End" xpdExt:DisplayName="End">
          <xpdl2:Event>
            <xpdl2:EndEvent Result="None"/>
          </xpdl2:Event>
          <xpdl2:NodeGraphicsInfos>
            <xpdl2:NodeGraphicsInfo BorderColor="0,0,128" FillColor="255,219,74" Height="44.0" LaneId="_0ELL0a8XEd2BUfeaOl0GHw" Width="30.0">
              <xpdl2:Coordinates XCoordinate="612.0" YCoordinate="110.0"/>
            </xpdl2:NodeGraphicsInfo>
          </xpdl2:NodeGraphicsInfos>
        </xpdl2:Activity>
      </xpdl2:Activities>
      <xpdl2:Transitions>
        <xpdl2:Transition Id="_0ELL4a8XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_0ELL068XEd2BUfeaOl0GHw" To="_0ELL1K8XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0ELL4q8XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_0ELL1K8XEd2BUfeaOl0GHw" To="_0ELL4K8XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="9.46843853820598" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0ELL468XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_0ELL1a8XEd2BUfeaOl0GHw" To="_0ELL2q8XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0ELL5K8XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_0ELL1q8XEd2BUfeaOl0GHw" To="_0ELL168XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="27.258361765043325" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
        <xpdl2:Transition Id="_0ELL5a8XEd2BUfeaOl0GHw" xpdExt:DisplayName="" Name="" From="_0ELL0q8XEd2BUfeaOl0GHw" To="_0ELL3a8XEd2BUfeaOl0GHw">
          <xpdl2:ConnectorGraphicsInfos>
            <xpdl2:ConnectorGraphicsInfo BorderColor="0,0,128" ToolId="XPD.ConnectionInfo"/>
            <xpdl2:ConnectorGraphicsInfo ToolId="XPD.StartAnchorPosition">
              <xpdl2:Coordinates XCoordinate="29.147615882815987" YCoordinate="0.0"/>
            </xpdl2:ConnectorGraphicsInfo>
          </xpdl2:ConnectorGraphicsInfos>
        </xpdl2:Transition>
      </xpdl2:Transitions>
      <xpdl2:ExtendedAttributes>
        <xpdl2:ExtendedAttribute Name="Destination" Value="CIM"/>
      </xpdl2:ExtendedAttributes>
    </xpdl2:WorkflowProcess>
  </xpdl2:WorkflowProcesses>
  <xpdl2:ExtendedAttributes>
    <xpdl2:ExtendedAttribute Name="CreatedBy" Value="TIBCO Business Studio"/>
    <xpdl2:ExtendedAttribute Name="FormatVersion" Value="7"/>
  </xpdl2:ExtendedAttributes>
</xpdl2:Package>
