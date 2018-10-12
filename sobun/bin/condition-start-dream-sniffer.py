#!/usr/bin/env python

from time import time
from datetime import datetime

START_HOUR = "08:30"
DURATION = "8h"

if __name__ == "__main__":
    today = datetime.today()
    start_hour = datetime.strptime(START_HOUR, '%H:%M')
    start_time = today.replace(hour=start_hour.hour, minute=start_hour.minute, second=0, microsecond=0)
