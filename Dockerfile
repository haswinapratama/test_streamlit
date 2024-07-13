FROM python:3.12-slim

# Install system dependencies
RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Copy your application code
COPY . /app
WORKDIR /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Run the Streamlit app
CMD ["streamlit", "run", "test_streamlit.py"]
