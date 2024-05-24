FROM python:3.12-slim

# Copy Streamlit app code
COPY essai.py /essai.py
COPY requirements.txt /requirements.txt

# Install dependencies
RUN pip install -r requirements.txt
EXPOSE 8501
# Start Streamlit
CMD ["streamlit", "run", "--server.enableCORS", "false", "essai.py"]
