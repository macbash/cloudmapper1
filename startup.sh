#!/bin/bash
export AWS_DEFAULT_REGION="eu-west-2"
export AWS_REGION="eu-west-2"
python cloudmapper.py configure add-account --config-file config.json --name dev --id ${AWS_ACCOUNT}
python cloudmapper.py collect --account dev
python cloudmapper.py report --account dev
python cloudmapper.py prepare --account dev
python cloudmapper.py webserver --public
