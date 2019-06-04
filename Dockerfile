ARG CODE_VERSION="latest"
FROM ubuntu:$CODE_VERSION
RUN echo $CODE_VERSION
ARG LICENSE_KEY="134-221"
RUN echo $LICENSE_KEY
LABEL MAINTAINER nandakishorkn@gmail.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
ENV ORACLE_PORT=1521
RUN chmod +x /code/Sample.sh
CMD sh /code/Sample.sh
