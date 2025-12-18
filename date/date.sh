#!/bin/bash


date -d "$current_date +1 day"

next_next_month=$(date -d "$current_date +2 month" -X "%Y%m")

echo "$next_next_month"