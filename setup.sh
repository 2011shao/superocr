

pip install --upgrade pip


python -m venv venv


source venv/bin/activate  

pip install -r requirements.txt


gunicorn -c run_gunicorn.py main:app


