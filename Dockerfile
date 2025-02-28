FROM python:3.10

RUN git clone -b Night-Userbot https://github.com/hana624/Night-Userbot /home/night/ && \
    chmod 777 /home/night && \
    mkdir /home/night/bin/

COPY ./sample_config.env ./config.env* /home/night/

WORKDIR /home/night/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
