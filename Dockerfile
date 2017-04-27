FROM 			debian

MAINTAINER 		David Chen <david@davidchen.blog>

RUN 			apt-get update \
				&& apt-get install sudo git build-essential cmake libboost-all-dev FreeRDP -y \
				&& git clone https://github.com/FreeRDP/FreeRDP-WebConnect.git

CMD 			[. /FreeRDP-WebConnect/setup-all.sh -f]

ENTRYPOINT 		[ /bin/bash ]

EXPOSE 			80 443
