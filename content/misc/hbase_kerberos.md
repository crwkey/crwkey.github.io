
hbase kerberos 参数配置

conf = HBaseConfiguration.create();
		conf.set("hadoop.security.authentication","Kerberos");
		conf.set("hbase.security.authentication","Kerberos");
		conf.set("hbase.zookeeper.quorum", ZOOKEEPER_LIST);
		conf.set("hbase.master.kerberos.principal","hbase/_HOST@GZHLWLGCSKDC");
		conf.set("hbase.regionserver.kerberos.principal", "hbase/_HOST@GZHLWLGCSKDC");
		conf.set(HConstants.CLIENT_ZOOKEEPER_QUORUM,ZOOKEEPER_LIST);
		conf.set(HConstants.ZOOKEEPER_CLIENT_PORT,"2181");
		conf.set(HConstants.ZOOKEEPER_ZNODE_PARENT,"/hbase-secure");

		UserGroupInformation.setConfiguration(conf);
		try {
			UserGroupInformation.loginUserFromKeytab("bdoc/admin@GZHLWLGCSKDC",
					"/etc/security/keytabs/bdoc.keytab");
			conn = ConnectionFactory.createConnection(conf);
			admin = (HBaseAdmin) conn.getAdmin();
		} catch (IOException e) {
			e.printStackTrace();
		}