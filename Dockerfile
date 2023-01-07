FROM        python:3  
RUN         useradd roboshop  
RUN         mkdir /app  
COPY        payment.ini rabbitmq.py requirement.txt payment.py /app/   
RUN         