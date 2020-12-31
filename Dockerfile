FROM python:3.6.12
RUN pip3 install gpuview
ENTRYPOINT [ "python3","-m" ,"gpuview"]