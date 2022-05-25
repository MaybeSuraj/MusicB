FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir HerokuKiMummy \
    && cd HerokuKiMummy \
    && git clone https://github.com/BlackVirusOfficial/HerokuKiMummy
WORKDIR /HerokuKiMummy/HerokuKiMummy
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD bash start
