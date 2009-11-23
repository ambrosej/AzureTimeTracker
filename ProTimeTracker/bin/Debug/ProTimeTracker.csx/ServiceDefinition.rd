<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ProTimeTracker" generation="1" functional="0" release="0" Id="659473eb-13c9-4296-a92b-a64fffa8654a" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ProTimeTrackerGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="TimeTrackerWebRole:HttpIn" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ProTimeTracker/ProTimeTrackerGroup/LB:TimeTrackerWebRole:HttpIn" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="TimeTrackerWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ProTimeTracker/ProTimeTrackerGroup/MapTimeTrackerWebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:TimeTrackerWebRole:HttpIn">
          <toPorts>
            <inPortMoniker name="/ProTimeTracker/ProTimeTrackerGroup/TimeTrackerWebRole/HttpIn" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapTimeTrackerWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ProTimeTracker/ProTimeTrackerGroup/TimeTrackerWebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="TimeTrackerWebRole" generation="1" functional="0" release="0" software="C:\Users\vivekananthan.karuna\Desktop\ProTimeTracker\ProTimeTracker\ProTimeTracker\obj\Debug\TimeTrackerWebRole\" entryPoint="ucruntime" parameters="Microsoft.ServiceHosting.ServiceRuntime.Internal.WebRoleMain" memIndex="1024" hostingEnvironment="frontend">
            <componentports>
              <inPort name="HttpIn" protocol="http" />
            </componentports>
            <resourcereferences>
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <eventstreams>
              <eventStream name="Microsoft.ServiceHosting.ServiceRuntime.RoleManager.Critical" kind="Default" severity="Critical" signature="Basic_string" />
              <eventStream name="Microsoft.ServiceHosting.ServiceRuntime.RoleManager.Error" kind="Default" severity="Error" signature="Basic_string" />
              <eventStream name="Critical" kind="Default" severity="Critical" signature="Basic_string" />
              <eventStream name="Error" kind="Default" severity="Error" signature="Basic_string" />
              <eventStream name="Warning" kind="OnDemand" severity="Warning" signature="Basic_string" />
              <eventStream name="Information" kind="OnDemand" severity="Info" signature="Basic_string" />
              <eventStream name="Verbose" kind="OnDemand" severity="Verbose" signature="Basic_string" />
            </eventstreams>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ProTimeTracker/ProTimeTrackerGroup/TimeTrackerWebRoleInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="TimeTrackerWebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="0d935bc6-0d11-4924-8c31-5d96c9461352" ref="Microsoft.RedDog.Contract\ServiceContract\ProTimeTrackerContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="06205e23-7456-4cb6-a576-bb94e3c7e35c" ref="Microsoft.RedDog.Contract\Interface\TimeTrackerWebRole:HttpIn@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ProTimeTracker/ProTimeTrackerGroup/TimeTrackerWebRole:HttpIn" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>