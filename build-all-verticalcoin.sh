#!/usr/bin/env bash

## dont build vanilla
##cd builder-vanilla && make && cd .. && \
cd builder-win32 && make && cd .. && \
cd builder-win64 && make && cd .. && \
cd builder-qt    && make && cd .. 



