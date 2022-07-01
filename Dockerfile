FROM python:3.10

ENV PORT=8888
WORKDIR /code
 
ADD ./requirements.txt /code/requirements.txt
ADD ./src /code/src

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "src.__main__:app", "--host", "0.0.0.0", "--port", $PORT]
