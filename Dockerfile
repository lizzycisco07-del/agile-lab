FROM python:3.12-slim
WORKDIR /app
COPY file.py file1.py file2.py ./
CMD ["python", "file.py"]
