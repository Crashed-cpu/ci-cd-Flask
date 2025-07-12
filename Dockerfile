# Use an official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy your code
COPY . .

# Install dependencies
RUN pip install flask

# Expose the port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
