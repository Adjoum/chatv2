FROM python:3.12-slim

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy Streamlit app code
COPY . .

# Expose port for Streamlit
EXPOSE 8501

# Start Streamlit
CMD ["streamlit", "run", "essai.py"]