pip install --upgrade pip
pip install -r requirements.txt
pip list
gunicorn -c run_gunicorn.py main:app


