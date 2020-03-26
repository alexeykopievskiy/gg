FROM python
WORKDIR /app
COPY static /app/static
COPY requirements.txt /app/requirements.txt
COPY app.py /app/app.py
COPY Procfile /app/Procfile
COPY root.html /app/root.html
RUN pip install -r  /app/requirements.txt
CMD python /app/app.py