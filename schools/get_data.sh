#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RAW_DIR="$DIR/raw"

if [ ! -d "$RAW_DIR" ]; then
  echo "creating $RAW_DIR"
  mkdir $RAW_DIR
fi

cd $RAW_DIR
MATRICULA_DIR="$RAW_DIR/matricula"

if [ ! -d "$MATRICULA_DIR" ]; then
  echo "creating $MATRICULA_DIR"
  mkdir $MATRICULA_DIR
fi

cd $MATRICULA_DIR
pwd
# curl -sS http://foo.bar/filename.zip > file.zip && \
# unzip file.zip                                  && \
# rm file.zip

RENDIMIENTO_DIR="$RAW_DIR/rendimiento"

if [ ! -d "$RENDIMIENTO_DIR" ]; then
  echo "creating $RENDIMIENTO_DIR"
  mkdir $RENDIMIENTO_DIR
fi

cd $RENDIMIENTO_DIR
pwd
# curl -sS http://foo.bar/filename.zip > file.zip && \
# unzip file.zip                                  && \
# rm file.zip