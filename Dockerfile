# Use an official Python runtime as a base image
FROM python:3-onbuild

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# port number the container should expose
EXPOSE 80

# run the command
CMD ["python3", "./app.py"]
