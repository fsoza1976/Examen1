﻿CREATE TABLE [dbo].[TipoInquilino]
(
Id_TipoInquilino INT NOT NULL IDENTITY(1,1) CONSTRAINT
PK_TipoInquilino PRIMARY KEY CLUSTERED(Id_TipoInquilino)
,Descripcion VARCHAR(250) NOT NULL
,Estado BIT NOT NULL
)
WITH (DATA_COMPRESSION = PAGE)
GO

