FROM greycilik/cilikuserbot:buster

RUN git clone -b EskayUbot https://github.com/darthic/kooy_userbot /home/kooy_userbot/ \
    && chmod 777 /home/kooy_userbot \
    && mkdir /home/kooy_userbot/bin/

COPY ./sample_config.env ./config.env* /home/kooy_userbot/

WORKDIR /home/kooy_userbot/

CMD ["python3", "-m", "userbot"]
