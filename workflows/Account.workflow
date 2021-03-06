<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>testemailalert</fullName>
        <ccEmails>shareeef.k@autormatob.com</ccEmails>
        <description>testemailalert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTSelfServiceNewCommentNotificationSAMPLE</template>
    </alerts>
    <rules>
        <fullName>testaccount</fullName>
        <actions>
            <name>testemailalert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.BillingCountry</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>qwqwq</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>testttt</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>Acc</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
