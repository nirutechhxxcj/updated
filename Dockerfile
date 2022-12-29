# Python Based Docker
FROM python:latest

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages
RUN pip3 install -U pip
RUN pip3 install -U requirements.txt
# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN cd /

RUN mkdir /MissPerfectURL
WORKDIR /MissPerfectURL

# Running MessageSearchBot
CMD ["python", "bot.py"]
