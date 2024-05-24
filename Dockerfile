FROM streamlit/streamlit:latest

# Copy Streamlit app code
COPY essai.py /essai.py
COPY requirements.txt /requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Start Streamlit
CMD ["streamlit", "run", "--server.enableCORS", "false", "essai.py"]
