USE [test]
GO

/****** Object:  Table [dbo].[sportsmen]    Script Date: 18.01.2023 11:18:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


 CREATE TABLE sportsmen (
    id_sportsmen    INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_id_sportsmen PRIMARY KEY ,
    fio varchar(max) NULL,
	email varchar(max) NULL,
	tel varchar(10) NULL,
	dat_rog date NULL,
	vozrast int NULL,
	dat_vrem_zap datetime NULL,
	n_pasport varchar(10) NULL,
	sred_mesto decimal(5, 4) NULL,
	biograf varchar(max) NULL,
	videoprez varchar(max) NOT NULL 
   );
   GO
    CREATE TABLE sorevnovanie (
    id_sorevnovanie INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_id_sorevnovanie PRIMARY KEY ,
    name_s varchar(max) NULL,	
	dat_vrem datetime NULL
   );
   GO
   CREATE TABLE rezult_s (    
	id_sportsmen INT NOT NULL foreign key references sportsmen(id_sportsmen),
	id_sorevnovanie INT NOT NULL foreign key references sorevnovanie(id_sorevnovanie),
	resultat int NULL
   );
   GO
    CREATE TABLE prizer (    
	id_sportsmen INT NOT NULL foreign key references sportsmen(id_sportsmen),
	id_sorevnovanie INT NOT NULL foreign key references sorevnovanie(id_sorevnovanie),
	mesto int NULL,
	priz  varchar(max) NULL
	)

  


