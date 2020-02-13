FROM nginx:1.17-alpine

COPY start.sh /usr/local/bin/

RUN apk add --update bash \
	&& rm -rf /var/cache/apk/* \
	&& chmod +x /usr/local/bin/start.sh

USER nginx:nginx
STOPSIGNAL SIGQUIT
CMD ["start.sh"]
