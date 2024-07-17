FROM python:3.8-slim

# Set the working directory in the container and copy the contents of current directory
WORKDIR /app
COPY . /app

# Install packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 7755 available to the world outside the container
EXPOSE 7755

# Run the application
CMD ["bash", "run.sh"]
