# Use Red Hat Universal Base Image 8
FROM registry.access.redhat.com/ubi8/ubi

# Install Python 3 and pip
RUN dnf install -y python3 python3-pip && \
    dnf clean all

# Install Flask
RUN pip3 install flask

# Set working directory
WORKDIR /app

# Copy your Flask app
COPY . .

# Expose Flask port
EXPOSE 5000

# Run the app (bind to all interfaces)
CMD ["python3", "app.py"]
