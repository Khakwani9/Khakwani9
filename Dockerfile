FROM python:3.8-slim
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y \
    tk \
    sqlite3
CMD [ "python","/from /kinter /import /*.py" ] 