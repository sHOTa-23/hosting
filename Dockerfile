FROM python:3.9-slim


WORKDIR /app
COPY . /app/

# COPY requirements.txt /app/
RUN pip install --no-cache-dir --retries 10 -r requirements.txt
RUN pip install torch==2.6.0 --index-url https://download.pytorch.org/whl/cpu


EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


