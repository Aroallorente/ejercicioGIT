--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_pedido` (
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(2,0) NOT NULL,
  `nif_cliente` int(11) NOT NULL,
  `importe_total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_producto`,`nif_cliente`),
  KEY `FK_detalles_pedido_clientes_idx` (`nif_cliente`),
  CONSTRAINT `FK_detalles_pedido_clientes` FOREIGN KEY (`nif_cliente`) REFERENCES `clientes` (`nif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalles_pedido_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;