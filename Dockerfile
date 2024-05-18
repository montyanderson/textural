FROM racket/racket:7.9-full

WORKDIR /app
ADD . .
RUN mkdir /app/arc # app instance data
RUN chown 2 /app/arc # runs as user 2


CMD [ "racket", "-f", "as.scm", "news.arc" ]
