FROM fnndsc/conda
RUN conda init --all
RUN pip install boto3 requests colored
COPY app.py /
ENV STORAGE="https://storage.yandexcloud.net/" BUKET=test-bucket AWS_DEFAULT_REGION=ru-central1 POSTFIX="" PREFIX=observe  SURL="https://example.com/update"
CMD python app.py -e all -d 1.0