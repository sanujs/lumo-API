#!/bin/bash
pip freeze > requirements.txt
scp -v -i sanuj.pem ./lumo_api.py ubuntu@ec2-3-95-149-169.compute-1.amazonaws.com:/home/ubuntu/API
scp -v -i sanuj.pem ./requirements.txt ubuntu@ec2-3-95-149-169.compute-1.amazonaws.com:/home/ubuntu/API
ssh -i sanuj.pem ubuntu@3.95.149.169 'pip install -r API/requirements.txt; sudo systemctl restart lumo_api.service'

# sudo systemctl daemon-reload