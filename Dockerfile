# Use an official base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy your code into the image
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt 

EXPOSE 5000

# Run the application (optional)
CMD ["python", "app.py"]
