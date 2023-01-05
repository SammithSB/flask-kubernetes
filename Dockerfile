FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY ./requirements.txt /app/requirements.txt

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . /app
# Run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]

