CREATE TABLE hfnoise.Remote_station_reg_status (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Station_Machine_ID` varchar(100) DEFAULT NULL,
  `Station_CPU_ID` varchar(45) DEFAULT NULL,
  `Callsign` varchar(45) DEFAULT NULL,
  `IP_Address` varchar(45) DEFAULT NULL,
  `Time_Stamp` varchar(45) NOT NULL DEFAULT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
