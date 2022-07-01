FROM python:3.9

WORKDIR /code
 
COPY . .

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", $PORT]
