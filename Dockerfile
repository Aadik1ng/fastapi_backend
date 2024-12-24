# Use the official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . /app/

# Expose the dynamic port (optional, Railway automatically handles this)
EXPOSE 8000

# Use the shell form CMD to ensure $PORT is substituted at runtime
CMD uvicorn app.main:app --host 0.0.0.0 --port $PORT
