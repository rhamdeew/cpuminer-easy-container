FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y git sudo \
	&& cd /root/ \
	&& git clone https://github.com/luisvasquez/cpuminer-easy.git \
	&& cd cpuminer-easy \
	&& bash build-ubuntu.sh

CMD /root/cpuminer-easy/cpuminer -a cryptonight -o stratum+tcp://cryptonight.eu.nicehash.com:3355 -u 1C6bQG1HVkP8xuo5nTkSuvWyPPkryjEYCN -p cpuminer -t `nproc`
