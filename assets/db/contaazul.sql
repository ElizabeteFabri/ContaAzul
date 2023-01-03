/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */
DESC CLIENTE;

CREATE DATABASE contaazul;

USE contaazul;

CREATE TABLE `companies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `nfe_number` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address_number` varchar(50) DEFAULT NULL,
  `address_neighb` varchar(100) DEFAULT NULL,
  `address_city` varchar(50) DEFAULT NULL,
  `address_citycode` int(11) DEFAULT NULL,
  `address_state` varchar(50) DEFAULT NULL,
  `address_country` varchar(50) DEFAULT NULL,
  `address_countrycode` int(11) DEFAULT NULL,
  `address_zipcode` varchar(50) DEFAULT NULL,
  `stars` int(11) NOT NULL DEFAULT '3',
  `internal_obs` text,
  `cpf` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `foreignid` varchar(20) DEFAULT NULL,
  `iedest` int(11) DEFAULT NULL,
  `ie` int(11) DEFAULT NULL,
  `isuf` varchar(20) DEFAULT NULL,
  `im` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `price` float NOT NULL,
  `quant` int(11) NOT NULL,
  `min_quant` int(11) NOT NULL,
  `cEAN` varchar(20) DEFAULT NULL,
  `NCM` int(11) DEFAULT NULL,
  `EXTIPI` varchar(20) DEFAULT NULL,
  `CFOP` int(11) DEFAULT NULL,
  `uCom` varchar(5) DEFAULT NULL,
  `cEANTrib` float DEFAULT NULL,
  `uTrib` varchar(10) DEFAULT NULL,
  `vFrete` int(11) DEFAULT NULL,
  `vSeg` int(11) DEFAULT NULL,
  `vDesc` int(11) DEFAULT NULL,
  `vOutro` int(11) DEFAULT NULL,
  `indTot` int(11) DEFAULT NULL,
  `xPed` int(11) DEFAULT NULL,
  `nItemPed` int(11) DEFAULT NULL,
  `nFCI` varchar(20) DEFAULT NULL,
  `cst` varchar(5) DEFAULT NULL,
  `pPIS` varchar(10) DEFAULT NULL,
  `pCOFINS` varchar(10) DEFAULT NULL,
  `csosn` int(11) DEFAULT NULL,
  `pICMS` varchar(10) DEFAULT NULL,
  `orig` int(11) DEFAULT NULL,
  `modBC` varchar(10) DEFAULT NULL,
  `vICMSDeson` varchar(10) DEFAULT NULL,
  `pRedBC` varchar(10) DEFAULT NULL,
  `modBCST` varchar(10) DEFAULT NULL,
  `pMVAST` varchar(10) DEFAULT NULL,
  `pRedBCST` varchar(10) DEFAULT NULL,
  `vBCSTRet` varchar(10) DEFAULT NULL,
  `vICMSSTRet` varchar(10) DEFAULT NULL,
  `qBCProd` varchar(10) DEFAULT NULL,
  `vAliqProd` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `inventory_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `action` varchar(3) NOT NULL DEFAULT '',
  `date_action` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `permission_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `params` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `permission_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `purchases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_purchase` datetime NOT NULL,
  `total_price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `purchases_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `id_purchase` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `quant` int(11) NOT NULL,
  `purchase_price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `Cidade` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `IdEstado` int(11) NOT NULL,
  `CodigoMunicipio` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL DEFAULT '',
  `Uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sales` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_sale` datetime NOT NULL,
  `total_price` float NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nfe_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sales_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `id_sale` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quant` int(11) NOT NULL,
  `sale_price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `id_group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
