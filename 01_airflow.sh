#!/bin/sh
set -e -x

echo "$FUNCNAME started"
LOGFILE=/tmp/1.txt

export AIRFLOW_CONFIG=/opt/airflow/airflow.cfg
AIRFLOW_API=api/dag_last_run/hydramatrices/all
echo "run /var/www/airflow/bin/airflow trigger_dag hydramatrices"
/mnt/d/HUB_GLOBAL/var_www/airflow/bin/airflow trigger_dag hydramatrices 2>&1
