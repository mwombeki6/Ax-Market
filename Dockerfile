FROM python:3.9


WORKDIR /code


COPY ./requirements.txt /code/requirements.txt


RUN pip install --no-cache-dir --upgrade -r /Ax-Market/requirements.txt


COPY ./app /Ax-Market/app


CMD ["fastapi", "run", "app/main.py", "--port", "80"]