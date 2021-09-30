FROM python:3.8-slim-buster

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
        python3-opencv \ 
        # libopencv-dev \     
        # libjpeg-dev \ 
        # libpng-dev \ 
        # libtiff-dev \     
        # libgtk2.0-dev \         
        # libatlas-base-dev \
        # gfortran \
        # webp \ 
        # libvtk6-dev \ 
        # zlib1g-dev \
    && python3 -m pip install -r requirements.txt    

ENTRYPOINT ["python"]
CMD ["app.py"]