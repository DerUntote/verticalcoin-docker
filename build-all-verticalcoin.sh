#!/usr/bin/env bash

cd builder       && make && cd .. && \
cd builder-win32 && make && cd .. && \
cd builder-win64 && make && cd .. && \
cd builder-qt    && make && cd .. && \


