BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Cuenta de ejemplo para asignaciones','');
INSERT INTO "Account" VALUES(2,'Andrea Fernandez','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2021-05-21','Refrigerated','Item 2','4');
INSERT INTO "Delivery_Item__c" VALUES(2,'2022-05-06','Frozen','Item','3');
INSERT INTO "Delivery_Item__c" VALUES(3,'2022-05-14','Non-refrigerated','Item 0','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2021-05-28','Frozen','Item 1','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Account__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'Delivery 0','2021-05-13T16:00:00.000+0000','Completed','2');
INSERT INTO "Delivery__c" VALUES(2,'Delivery 1','2021-05-14T16:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(3,'Delivery 3','2021-05-21T16:00:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(4,'Delivery 2','2021-05-15T16:30:00.000+0000','Canceled','2');
COMMIT;
