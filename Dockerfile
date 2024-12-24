# Use the official Python image
FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the application port
EXPOSE 8000

# Run the FastAPI app using hypercorn
CMD ["hypercorn", "app.main:app", "--bind", "0.0.0.0:8000"]
