FROM python:3.8-slim
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y \
    tk \
    sqlite3 \
    apt-get install -y apt-utils && \
    apt-get install -y other-packages
CMD [ "python","/from /kinter /import /*.py" ] 