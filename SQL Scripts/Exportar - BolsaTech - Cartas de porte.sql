USE CSMovimientoGranos
GO

SELECT '''' + Movimiento_Cereal.ComprobanteNumero AS NroCartaPorte, Movimiento_Cereal.CTGNumero AS NroCTG, Cereal.ONCCA_EspecieCodigo AS Cultivo,
	Entidad_Destino.CUIT AS CUIT_Destino, Entidad_Destinatario.CUIT AS CUIT_Destinatario, REPLACE(Entidad_Titular.Nombre, ',', '') AS Titular, Entidad_Titular.CUIT AS CUIT_Titular,
	REPLACE(Entidad_RemitenteComercial.Nombre, ',', '') AS RemitenteComercial, Entidad_RemitenteComercial.CUIT AS CUIT_RemitenteComercial,
	Destino.ONCCA_Codigo AS CodigoEstablecimiento, LocalidadOrigen.IDLocalidad AS LocalidadOrigen, LocalidadDestino.IDLocalidad AS LocalidadDestino, 'TRANSPORTE AUTOMOTOR' AS TipoTransporte,
	NULL AS CantidadVagones, NULL AS IdentificadorVagones, Movimiento_Cereal.PesoNeto AS Peso, (CASE WHEN Movimiento_Cereal.DeclaraIPRO = 1 THEN 'INTACTA' ELSE '' END) AS TecnologiaDeclarada,
	Movimiento_Cereal_Analisis.MuestraNumero AS CodigoMuestra, Destino.ONCCA_Codigo AS CodigoLaboratorioCuantitativo, Destino.ONCCA_Codigo AS CodigoLaboratorioCualitativo,
	CONVERT(char(10), Movimiento_Cereal.FechaHoraDescarga, 103) AS FechaDescarga, Destino.ONCCA_Codigo AS NroPlantaDestino, REPLACE(Entidad_Corredor.Nombre, ',', '') AS Corredor,
	Entidad_Corredor.CUIT AS CUIT_Corredor, REPLACE(Entidad_Intermediario.Nombre, ',', '') AS Intermediario, Entidad_Intermediario.CUIT AS CUIT_Intermediario,
	REPLACE(Entidad_Entregador.Nombre, ',', '') AS Representante, Entidad_Entregador.CUIT AS CUIT_Representante, REPLACE(Cosecha.ONCCA_Codigo, '-', '') AS Cosecha,
	Movimiento_Cereal.ContratoNumero AS NumeroContrato
	FROM (((((((((((((Movimiento_Cereal INNER JOIN Cereal ON Movimiento_Cereal.IDCereal = Cereal.IDCereal)
		INNER JOIN Cosecha ON Movimiento_Cereal.IDCosecha = Cosecha.IDCosecha)
		INNER JOIN Entidad AS Entidad_Destino ON Movimiento_Cereal.IDEntidad_Destino = Entidad_Destino.IDEntidad)
		INNER JOIN Entidad AS Entidad_Destinatario ON Movimiento_Cereal.IDEntidad_Destinatario = Entidad_Destinatario.IDEntidad)
		INNER JOIN Entidad AS Entidad_Titular ON Movimiento_Cereal.IDEntidad_Titular = Entidad_Titular.IDEntidad)
		LEFT JOIN Entidad AS Entidad_RemitenteComercial ON Movimiento_Cereal.IDEntidad_RemitenteComercial = Entidad_RemitenteComercial.IDEntidad)
		INNER JOIN Entidad_OrigenDestino AS Origen ON Movimiento_Cereal.IDEntidad_Titular = Origen.IDEntidad AND Movimiento_Cereal.IDOrigenDestino_Origen = Origen.IDOrigenDestino)
		INNER JOIN Localidad AS LocalidadOrigen ON Origen.IDLocalidad = LocalidadOrigen.IDLocalidad)
		INNER JOIN Entidad_OrigenDestino AS Destino ON Movimiento_Cereal.IDEntidad_Destino = Destino.IDEntidad AND Movimiento_Cereal.IDOrigenDestino_Destino = Destino.IDOrigenDestino)
		INNER JOIN Localidad AS LocalidadDestino ON Destino.IDLocalidad = LocalidadDestino.IDLocalidad)
		INNER JOIN Movimiento_Cereal_Analisis ON Movimiento_Cereal.IDMovimiento_Cereal = Movimiento_Cereal_Analisis.IDMovimiento_Cereal)
		LEFT JOIN Entidad AS Entidad_Corredor ON Movimiento_Cereal.IDEntidad_Corredor = Entidad_Corredor.IDEntidad)
		LEFT JOIN Entidad AS Entidad_Intermediario ON Movimiento_Cereal.IDEntidad_Intermediario = Entidad_Intermediario.IDEntidad)
		LEFT JOIN Entidad AS Entidad_Entregador ON Movimiento_Cereal.IDEntidad_Entregador = Entidad_Entregador.IDEntidad
	WHERE Movimiento_Cereal.Tipo = 'E' AND Movimiento_Cereal.IDOrigenDestino_Destino = 1 AND Movimiento_Cereal.IDCereal = 3 AND Movimiento_Cereal.IDCosecha = 16