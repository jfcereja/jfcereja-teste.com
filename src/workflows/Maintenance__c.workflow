<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Report_the_technician</fullName>
        <description>Report the technician</description>
        <protected>false</protected>
        <recipients>
            <recipient>jfcereja@teste.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Problem_to_Technician</template>
    </alerts>
    <rules>
        <fullName>Alert Technician</fullName>
        <actions>
            <name>Report_the_technician</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>IF(ISNULL(Technician__r.Email) , false, true)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
