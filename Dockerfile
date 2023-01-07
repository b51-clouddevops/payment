FROM        python:3  
RUN         useradd roboshop  
RUN         mkdir /app  
WORKDIR     /app 
COPY        payment.ini rabbitmq.py requirement.txt payment.py /app/   
RUN         pip3 install -r requirements.txt 
ENTRYPOINT ["uwsgi", "--ini", "payment.ini"]
