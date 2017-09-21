<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Mediumpriority</fullName>
        <ccEmails>Shiva.g@autorabit.com</ccEmails>
        <ccEmails>Shiva.g1@autorabit.com</ccEmails>
        <description>Mediumpriority</description>
        <protected>false</protected>
        <recipients>
            <recipient>integration@00d7f000000p08fuaq.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shareef.m@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/prioritystatus</template>
    </alerts>
    <fieldUpdates>
        <fullName>fieldupdatetest</fullName>
        <description>dh12h132i1321321321321321321321321</description>
        <field>Status</field>
        <literalValue>Working</literalValue>
        <name>fieldupdatetest</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>outboundmsg</fullName>
        <apiVersion>40.0</apiVersion>
        <endpointUrl>https://na15.autorabit.com/</endpointUrl>
        <fields>CaseNumber</fields>
        <fields>ClosedDate</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>shareef.m@autorabit.com</integrationUser>
        <name>outboundmsg</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>prioritystatus</fullName>
        <actions>
            <name>Highpriority_case_created</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>prioritystatus1</fullName>
        <actions>
            <name>Mediumpriority</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>Medium</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>test1</fullName>
        <assignedTo>shareef.m@autorabit.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Case.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>test1</subject>
    </tasks>
</Workflow>
