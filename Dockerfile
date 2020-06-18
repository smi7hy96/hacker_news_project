FROM python:alpine

WORKDIR /home/Hackerank_basic_api

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["./start.sh"]

CMD ["0.0.0.0", "5000"]