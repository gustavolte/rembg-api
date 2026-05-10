FROM python:3.11-slim

RUN apt-get update && apt-get install -y 
libglib2.0-0 
libsm6 
libxext6 
libxrender1

RUN pip install rembg fastapi uvicorn python-multipart pillow

EXPOSE 10000

CMD ["rembg", "s", "--host", "0.0.0.0", "--port", "10000"]
