<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>When_ever_a_support_case_created</fullName>
        <description>When ever a support case created</description>
        <protected>false</protected>
        <recipients>
            <recipient>shareef.m@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseCreatedWebInquiries</template>
    </alerts>
    <alerts>
        <fullName>case_created</fullName>
        <description>case created</description>
        <protected>false</protected>
        <recipients>
            <recipient>shareef.m@autorabit.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseCreatedWebInquiries</template>
    </alerts>
    <rules>
        <fullName>Upon case created</fullName>
        <actions>
            <name>When_ever_a_support_case_created</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Support__c.CreatedById</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>case_created</name>
                <type>Alert</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
