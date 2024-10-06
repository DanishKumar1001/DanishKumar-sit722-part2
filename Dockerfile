# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./book_catalog /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8000 to the outside world
EXPOSE 4000

# Define environment variable for PostgreSQL
ENV DATABASE_URL postgresql://task6p_db_user:mZXlZIOwlLfEEMnRb3Rur0u4HAGzeyyu@dpg-cs0dr2ggph6c73a6ihn0-a.oregon-postgres.render.com/task6p_db


# Run the application with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4000"]
