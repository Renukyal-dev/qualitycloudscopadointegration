More information in: https://docs.qualityclouds.com/qcd/copado-integration-31721135.html

To integrate Quality Clouds with Copado:

Go to the code repository for Quality Clouds Copado Integration, and click Clone. This downloads the package.
Use your preferred way to install the package in your Salesforce org. You can use the following command: 

sfdx force:mdapi:deploy -d <repository_folder/> -u <org_alias> -w 100

Setting up
All you need to do to set up the Quality Clouds features is to give your users permissions to see the fields added in the unmanaged package, and adapt the page layout for your user stories. 

1. Give permissions
Set the fields delivered in the unmanaged package to visible for your users. The fields delivered are added for the following objects:
From QCIssue: fields Link to Issue and User Story
From Scan: Link to Scan and User Story
From Copado: Copado User Story	and QCIssue Count


→ To give permission

Once in Salesforce, go to Setup > Object Manager.
Search for QCIssue object, click to open it, and go to Fields and Relationships. This opens a table with all the fields. 
Scroll down to Link to Issue custom field, open it, and do the following steps:
Click Field Level Security. 
Select the visible check box for each role that needs to see the integration fields. 
Click Save.
In Fields and Relationships, scroll down, and edit User Story, and perform the steps i - iii.
Back in the Object Manager, search for Scan, click to open it, go to Fields and Relationships, and perform steps i - iii for the following elements:
Link to Scan
User Story
Finally, in Object Manager, search for Copado User story, click to open it, go to Fields and Relationships, and perform steps i - iii for the following element:
QC Issue Count
You have now made the integration visible to your selected users.

2. Adapt user story layout
Add the custom button and fields to access the Quality Clouds functionality from within your user stories. 

→ To adapt page layout for user stories
Once in Salesforce, go to Setup > Object Manager. 
Search for and select User story. 
Select Page Layouts, and open the layout you want to modify, e.g. Copado__Page_Story__c.
From Buttons section, select the Run Quality Clouds scan button, and drag and drop it to the User Story Details > Custom Buttons.
From Mobile and Lightning Actions section, select the Run Quality Clouds scan button, and drag and drop it to the User Story Details > Custom Buttons.
From Related Lists section, select the Scans and QCIssues lists and drag and drop these into the Related Lists space. 
Optionally, you can customize the display of the list by adding fields to display. Click the wrench to open properties.  For example, for Scans, add the Link to Scan. 
Optionally, from Fields section, select the QC Issue Count field, and drag and drop it to the Information section. This is useful when you want to set validation rules for your user stories. 
You have now set up the Quality Clouds actions from your Copado user story. 