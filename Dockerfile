FROM ubuntu
RUN apt-get clean && apt-get update && apt-get install -y libexpat-dev libglib2.0-dev curl 
COPY ./backend/ /home/backend/
#COPY ./do/ /home/do/
#COPY ./dtmp/ /home/dtmp/
#COPY ./backend /home/backend/
#RUN chmod +x /home/do/do
RUN chmod +x /home/backend/puts-do/puts-do
ENTRYPOINT ["/home/backend/puts-do/puts-do", "-ui", "--port=8080","--versi=9.a"]