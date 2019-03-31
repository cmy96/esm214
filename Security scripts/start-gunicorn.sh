source Django_Application/virtual_env/bin/activate
cd ~/Django_Application/virtual_env/ICA-1/ICA
nohup gunicorn ICA.wsgi --bind unix:/tmp/gunicorn.sock --workers 5 --access-logfile=./access.log --error-logfile=./error.log --timeout 90 > nohup.out &
