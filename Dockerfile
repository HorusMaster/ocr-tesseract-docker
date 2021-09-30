FROM python:3.8-slim

COPY . /app

WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        python3-dev \
        python3-setuptools \
        tesseract-ocr \
        make \
        gcc \        
        libopencv-dev \     
        libjpeg-dev \ 
        libpng-dev \ 
        libtiff-dev \     
        libgtk2.0-dev \         
        libatlas-base-dev \
        gfortran \
        webp \ 
        libvtk6-dev \ 
        zlib1g-dev \
    && python3 -m pip install -r requirements.txt \
    && apt-get remove -y --purge make gcc build-essential \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["python"]
CMD ["app.py"]