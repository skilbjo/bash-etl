## b a s h - e t l
: need an etl?

[CircleCI Builds](https://circleci.com/gh/skilbjo/bast-etl)

[![CircleCI](https://circleci.com/gh/skilbjo/bash-etl/tree/master.svg?style=svg)](https://circleci.com/gh/skilbjo/bash-etl/tree/master)
[![Docker Repository on Quay](https://quay.io/repository/skilbjo/bash-etl/status "Docker Repository on Quay")](https://quay.io/repository/skilbjo/bash-etl)

## What
Mono-repo for storage of bash jobs run.

## Run it
`deploy/bin/run-job [job] [optional: date] [optional: &args]`

`dev-resources/run-container`

## Schedule
`cat deploy/tasks/crontab`

## Environment variables

```bash
export aws_access_key_id=''
export aws_secret_access_key=''
export db_uri=''
export healthchecks_vacuum=''
```
