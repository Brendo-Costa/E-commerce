FROM python:4.0.2

#Não gerar os arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE 1
#Mensagens de log não se armazenagem em buffer
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN python -m pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

#Copia tudo que esta na pasta local para a pasta code
COPY . .