DROP TABLE IF EXISTS #TipoTemp

SELECT
Id_TipoInquilino, Descripcion, Estado INTO #TipoTemp
FROM (
VALUES 
(1, 'FISICO', true),
(2, 'JURIDICO', true)
)AS TEMP(Id_TipoInquilino, Descripcion, Estado)






--ACTUALIZAR DATOS:
UPDATE TI SET 
TI.Descripcion=TT.Descripcion,
TI.Estado=TT.Estado
FROM dbo.TipoInquilino TI
INNER JOIN #TipoTemp TT
ON TI.Id_TipoInquilino=TT.Id_TipoInquilino



--INSERTAR DATOS:
SET IDENTITY_INSERT dbo.TipoInquilino ON

INSERT INTO dbo.TipoInquilino(
Id_TipoInquilino, Descripcion, Estado)
SELECT 
Id_TipoInquilino, Descripcion, Estado
FROM #TipoTemp

EXCEPT
SELECT
Id_TipoInquilino, Descripcion, Estado
FROM dbo.TipoInquilino

SET IDENTITY_INSERT dbo.TipoInquilino OFF
GO