CREATE TABLE prof (
    majorNo VARCHAR(5),
    majorName CHAR(25)
    );
    
INSERT INTO prof(majorNo,majorName)
VALUES ("EC001","Electronics Technology"),
	   ("EC002","Communication Technology"),
       ("EC003","Computer engineering"),
       ("EC004","Computer networking"),
       ("EC005","Renewable electronics");
       
CREATE TABLE stud (
    studNo VARCHAR(10),
    studMaj VARCHAR(5),
    lName CHAR(20),
    fName CHAR(20),
    sex CHAR(1),
    dob DATE,
    doe DATE);
    
INSERT INTO stud (studNo, studMaj, lName, fName, sex, dob, doe)
VALUES ("14B1SEAS01","EC002","Amraa","Ankhaa","M","1997-01-01","2014-09-01"),
	   ("14B1SEAS02","EC001","Bataa","Boldoo","M","1996-02-02","2014-09-01"),
       ("14B1SEAS03","EC005","Chimed","Chimgee","F","1995-03-03","2014-09-01"),
       ("14B1SEAS04","EC003","Dondog","Dorj","M","1996-12-12","2014-09-01"),
       ("14B1SEAS05","EC003","Enkh","Erdene","M","1997-11-11","2014-09-01"),
       ("14B1SEAS06","EC004","Ganaa","Gombo","M","1998-10-10","2014-09-01"),
       ("14B1SEAS07","EC001","Injinash","Ishgen","F","1997-09-09","2014-09-01"),
       ("14B1SEAS08","EC005","Jamts","Jambal","M","1996-08-08","2014-09-01"),
       ("14B1SEAS09","EC003","Khangai","Kherlen","F","1997-11-12","2014-09-01"),
       ("14B1SEAS10","EC002","Lodoi","Luvsan","M","1995-12-25","2014-09-01"),
       ("14B1SEAS11","EC004","Mandakh","Molor","M","1997-05-17","2014-09-01"),
       ("14B1SEAS12","EC004","Narmandakh","Nomch","M","1997-09-02","2014-09-01"),
       ("14B1SEAS13","EC003","Orkhon","Onon","F","1997-06-08","2014-09-01"),
       ("14B1SEAS14","EC001","Purev","Peljee","M","1998-02-15","2014-09-01"),
       ("14B1SEAS15","EC005","Ravdan","Rentsenkhand","F","1999-11-14","2014-09-01");
