HelloTableViewController
========================

Hello World iOS7 app to display a list of items in a Table View Controller.

Steps to populate a Table View Controller:

1) Create a new Objective-C class which inherits from UITableViewController and implements the following methods:
     – numberOfSectionsInTableView
     – tableView:numberOfRowsInSection
     – tableView:cellForRowAtIndexPath

2) In the layout:
     - Select the Table View Controller, in the identity inspector, assign the custom class to the class you created at step 1
     - Select the Table View Cell, in the Attributes inspector, assign the identifier to "Cell" (which is used in method tableView:cellForRowAtIndexPath) 
     
