use master
go

backup certificate tdeZert --name des Zertifikats
	to file ='D:\_BACKUP\TDEZEert.cer'
	with private key
		(file='D:\_BACKUP\tdezertpriv.pvk', 
		encryption by password='ppedvAG01!')
	go


backup database tdedemo to disk='D:\_HRBACKUP\tde.bak'


---Restore------ auf anderen Server
use master
go
drop master key

create master key encryption by password='ppedvAG01!'
go

create certificate tdeZert
	from file='D:\_HRBACKUP\TDEZEert.cer'
	with private key 
	(file='D:\_HRBACKUP\tdezertpriv.pvk', 
	decryption by password='ppedvAG01!')



