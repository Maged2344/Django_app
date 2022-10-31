FROM python
# set work directory
WORKDIR /usr/src/app
USER root
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip 
COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt

# copy project
COPY . /usr/src/app

EXPOSE 80

CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
