# Docker file to run cumulus-library
FROM python:bookworm
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY credentials /root/.aws/credentials
ENV CUMULUS_LIBRARY_DATABASE=cumulus_library_sample_db
RUN mkdir /studies
ENV CUMULUS_LIBRARY_DATA_PATH=/studies
CMD ["/bin/bash"]