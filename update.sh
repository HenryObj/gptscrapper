#!/bin/bash

# Commit and push to GitHub
git add .
git commit -m "$1"  # The first argument is the commit message
git push origin main

# Update PyPI package
python setup.py sdist bdist_wheel
twine upload -u __token__ -p $PYPI_TOKEN dist/* #$PYPI is stored as an env variable