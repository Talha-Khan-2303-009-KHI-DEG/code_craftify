# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory to /app
WORKDIR /home/app

# Copy the current directory contents into the container at /app
COPY . /home/app/

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
#RUN pip install -r requirements.txt

# Expose the port that Streamlit listens on (default is 8501)
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py"]
