#!/usr/bin/env bash
amixer set Capture toggle && test -z "$(amixer get Capture | tail -n 1 | grep '\[on\]')" && aplay mute.wav || aplay unmute.wav
