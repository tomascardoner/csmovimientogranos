SELECT Movimiento_Cereal.IDMovimiento_Cereal, Movimiento_Cereal.ComprobanteNumero, Movimiento_Cereal.FechaCarga
	FROM Movimiento_Cereal INNER JOIN Movimiento_Cereal_Analisis ON Movimiento_Cereal.IDMovimiento_Cereal = Movimiento_Cereal_Analisis.IDMovimiento_Cereal
	WHERE Movimiento_Cereal_Analisis.MuestraNumero = 984