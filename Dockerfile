# Use an official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy files to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 8000

# Run the application
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]

