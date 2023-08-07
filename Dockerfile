FROM ubuntu-latest
RUN apt update 
RUN apt install python3-tk -y
WORKDIR /..
COPY /from /tkinter /import /*.py ./
CMD [ "python3","./from /tkinter/import/*.py" ]

