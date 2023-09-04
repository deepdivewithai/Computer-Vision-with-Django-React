# Use Python 3.10.10 as a parent image
FROM python:3.10.10

# Set environment variables (optional)
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE API.settings

# Create and set the working directory
RUN mkdir /app
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install project dependencies
RUN pip install -r requirements.txt

# Copy the rest of the project code into the container
COPY . /app/

# Expose the port your Django app will run on (usually 8000)
EXPOSE 8000

# Start the Django development server (adjust the command as needed)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]