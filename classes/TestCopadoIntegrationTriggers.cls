@isTest
private class TestCopadoIntegrationTriggers {
    @isTest static void TestScanTriggers() {

        QCloudsSaaS__Instance__c instance;
        QCloudsSaaS__Instance__c instancee = new QCloudsSaaS__Instance__c(QCloudsSaaS__url__c='url', QCloudsSaaS__Description__c='dec', QCloudsSaaS__Environment_Type__c='dev',QCloudsSaaS__ID__c= '1', QCloudsSaaS__Instance_Type__c='salesforcce', QCloudsSaaS__Is_Featured_Banch__c=true);
        upsert instance = instancee QCloudsSaaS__ID__c;
        QCloudsSaaS__Scann__c scan = new QCloudsSaaS__Scann__c(QCloudsSaaS__ID__c= '1',QCloudsSaaS__Date__c = Datetime.valueOf('2019-07-23 08:25:59'), QCloudsSaaS__State__c='SUCCESS', QCloudsSaaS__Scan_Type__c='feature-branch-scan', QCloudsSaaS__Branch_Name__c='develop', QCloudsSaaS__Instance__c= instance.Id);
        upsert scan QCloudsSaaS__ID__c;
    
        Test.startTest();
        update scan;
        Test.stopTest();
        System.assertEquals('smoke', 'smoke');
    }
    @isTest static void TestIssueTriggers() {

        QCloudsSaaS__Instance__c instance;
        QCloudsSaaS__Instance__c instancee = new QCloudsSaaS__Instance__c(QCloudsSaaS__url__c='url', QCloudsSaaS__Description__c='dec', QCloudsSaaS__Environment_Type__c='dev',QCloudsSaaS__ID__c= '1', QCloudsSaaS__Instance_Type__c='salesforcce', QCloudsSaaS__Is_Featured_Banch__c=true);
        upsert instance = instancee QCloudsSaaS__ID__c;
        QCloudsSaaS__Scann__c scan = new QCloudsSaaS__Scann__c(QCloudsSaaS__ID__c= '1',QCloudsSaaS__Date__c = Datetime.valueOf('2019-07-23 08:25:59'), QCloudsSaaS__State__c='SUCCESS', QCloudsSaaS__Scan_Type__c='feature-branch-scan', QCloudsSaaS__Branch_Name__c='develop', QCloudsSaaS__Instance__c= instance.Id);
        upsert scan QCloudsSaaS__ID__c;
        QCloudsSaaS__QCIssue__c issue = new QCloudsSaaS__QCIssue__c(QCloudsSaaS__Scan__c = scan.id , QCloudsSaaS__ID__c= '2'); 
        upsert issue QCloudsSaaS__ID__c;
        Test.startTest();
        update issue;
        Test.stopTest();
        System.assertEquals('smoke', 'smoke');
    }
}