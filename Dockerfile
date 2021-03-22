From ubuntu
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
RUN pip3 install Flask && pip3 install WTForms && pip3 install SQLAlchemy && pip3 install bcrypt && pip3 install requests && pip3 install flask-heroku && pip3 install gunicorn
COPY . /opt/app
ENTRYPOINT python3 /opt/app/app.py
