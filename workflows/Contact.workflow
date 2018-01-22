<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Apparao</fullName>
        <actions>
            <name>contact_person</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.AccountName</field>
            <operation>equals</operation>
            <value>Contact.contact_person</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>contact_person</fullName>
        <assignedTo>shareef.m@autorabit.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>High</priority>
        <protected>true</protected>
        <status>In Progress</status>
        <subject>contact person</subject>
    </tasks>
</Workflow>
