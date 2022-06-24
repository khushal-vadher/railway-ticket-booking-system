#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys


def main():
    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'BTB.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()

# create database named BTB in mySQL
# run following command
#   python manage.py makemigrations acount
#   python manage.py makemigrations bookTicket
#   python manage.py migrate acount
#   python manage.py migrate bookTicket
# create superUSer by following command
#   python manage.py createsuperuser
# give asked creditionals to create super user
# go to http://127.0.0.1:8000/admin/ and login 
