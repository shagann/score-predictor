FROM python:3.12-slim

WORKDIR /opt/flask_scorepredictor

COPY . .

RUN pip install --no-cache-dir pandas flask scikit-learn

RUN mkdir -p templates
RUN cp index.html templates/index.html
RUN cp result.html templates/result.html

RUN python model.py

EXPOSE 5000

CMD ["python", "flaskapp.py"]
