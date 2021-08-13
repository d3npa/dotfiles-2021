#!/usr/bin/env python3

import time
import subprocess

def volume():
    a = subprocess.run(['amixer', 'sget', 'Master'], capture_output=True)
    out = a.stdout.decode('utf-8')
    vol = out.split('\n')[4].split()[3][1:-1]
    return vol

def battery():
    red = '\x04'
    green = '\x06'
    yellow = '\x05'
    reset = '\x01'
    with open("/sys/class/power_supply/BAT0/capacity") as fd:
        bat = int(fd.read().strip())
    if bat <= 20:
        return f'{red}{bat}%{reset}'
    elif 20 < bat <= 50:
        return f'{yellow}{bat}%{reset}'
    else:
        return f'{green}{bat}%{reset}'

def clock():
    return time.strftime("%H:%M")

if __name__ == '__main__':
    print(f'.: {volume()} | {battery()} | {clock()} :.')

