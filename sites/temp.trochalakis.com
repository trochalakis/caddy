grafana.trochalakis.com {
	import secure *

	reverse_proxy 192.168.5.186:3000
}

code.trochalakis.com {
	import secure *

	reverse_proxy 192.168.5.108:8080
}



aria.trochalakis.com {
	import secure *

	reverse_proxy 192.168.5.23:6880
}
monica.trochalakis.com {
	import secure *
 
	reverse_proxy 192.168.5.23:8083
}

beta.monica.trochalakis.com {
	reverse_proxy 192.168.5.23:8076
}

apkstore.trochalakis.com {
	import secure *

	reverse_proxy 192.168.5.20:9080
}
vcf.trochalakis.com {
	import secure *

	reverse_proxy 192.168.5.20:8494
}