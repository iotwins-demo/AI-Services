#!/bin/sh
set -u

echo WORKDIR: $WORKDIR
echo OUTDIR: $OUTDIR
echo FUNCTION Nr: $FUNCTION

# check APPLICATION name
case $APPLICATION in
  general_services)
    export APP_FILE=/src/general_services.py
    ;;
  anomaly_detection)
    export APP_FILE=/src/anomalyDetection.py
    ;;
  *)
    echo "Unknown application. Allowed values: general_services, anomaly_detection"
    exit 255
    ;;
esac

#download input from Swift
echo Downloading input file
swift download INPUT --prefix $JOB_UUID || exit 23

export INPUTDIR=$WORKDIR/INPUT
export OUTDIR=$WORKDIR/output

echo Running $APPLICATION
python $APP_FILE $FUNCTION $OUTDIR/$JOB_UUID/$INPUT_FILENAME || exit 255

tar cfvz output.tar.gz $OUTDIR

#############################

# upload output to swift
echo Uploading output
swift upload OUTPUT/${JOB_UUID} output.tar.gz || exit 255


