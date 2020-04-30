FROM python:alpine

WORKDIR /home/Hackerank_basic_api

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["app.py"]