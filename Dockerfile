#use the official Python image from the Docker Hub
FROM python:3.9-alpine

#set the working directory
WORKDIR /app

#copy the current directory contents into the container at /app
COPY . /app

#install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

#make port 5000 available to the world outside this container
EXPOSE 5000

#run app.py when the container launches
CMD ["python", "app.py"]
