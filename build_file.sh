#!/bin/bash
# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Move static files to the `staticfiles_build` directory
mkdir -p staticfiles_build
mv static/* staticfiles_build/
