USE SuperMoney;

BACKUP DATABASE SuperMoney 
TO DISK= 'C:\Users\Public\Documents\SuperMoney.bak' 
WITH FORMAT,
MEDIANAME = 'SQLBackup',
NAME = 'SuperMoney';

SELECT * FROM logs;

BEGIN TRANSACTION
DELETE TOP(3)
FROM logs;
COMMIT;

SELECT * FROM logs;

BEGIN TRANSACTION
DELETE
FROM logs
WHERE ("user" = 'hack3r')
COMMIT;

SELECT * FROM logs;
