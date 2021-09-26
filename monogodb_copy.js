//All details related to zen database 
db.zen_class.find()

//Find all the company drives which appeared between 15 oct-2020 and 31-oct-2020 
db.zen_class.find({date: {$gt:ISODate("2020-10-15"),$lt:ISODate("2020-10-31")}})

// Find all the topics and tasks which are thought in the month of October
db.zen_class.find({},{topics:1,tasks:1})


// Find all the company drives and students who are appeared for the placement. 
db.zen_class.find({},{company_drives:1,name:1})


// Find the number of problems solved by the user in codekata
db.zen_class.find({},{name:1,codekata:1})

// Find all the mentors
db.zen_class.find({},{name:1,mentors:1})
