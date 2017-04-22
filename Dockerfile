FROM 			ubuntu:14.04

MAINTAINER 		David Chen <david@davidchen.blog>

RUN 			apt-get update \
				&& apt-get install git -y \
				&& git clone https://github.com/FreeRDP/FreeRDP-WebConnect.git

CMD 			[. /FreeRDP-WebConnect/install_prereqs.sh]
CMD 			[. /FreeRDP-WebConnect/setup-all.sh -f -i -d]

ENTRYPOINT 		[ /bin/bash ]

EXPOSE 			80 443
