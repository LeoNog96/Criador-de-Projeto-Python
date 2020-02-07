FROM python:3
WORKDIR /src

COPY . .

RUN pip install -r requirements/requirements.txt

CMD [ "python", "./main.py" ]
