FROM python:3.9

WORKDIR /code
 
COPY . ./

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD exec uvicorn src.main:app --proxy-headers --host 0.0.0.0 --port $PORT
