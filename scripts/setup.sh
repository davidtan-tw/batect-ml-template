#!/bin/sh

set -e

poetry install --no-root

# download spacy language model if it's not already downloaded.
 RUN [ -f /usr/local/lib/python3.10/site-packages/en_core_web_lg/__init__.py ] || python -m spacy download en_core_web_sm
