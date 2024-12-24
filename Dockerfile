# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local directory to the container's work directory
COPY . /app/

# Expose the port (optional, Railway does dynamic port binding)
EXPOSE 8000

# Set the command to run Hypercorn with the environment variable for the port
CMD ["hypercorn", "app.main:app", "--bind", "0.0.0.0:$PORT"]
