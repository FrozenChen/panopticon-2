FROM python:3.11-slim
ENV IS_DOCKER=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV HOME /home/panopticon
RUN useradd -m -d $HOME -s /bin/sh panopticon
WORKDIR $HOME
COPY ./requirements.txt .
RUN pip install --no-compile --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "panopticon-2.py"]
