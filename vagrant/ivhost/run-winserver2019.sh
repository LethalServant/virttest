#!/bin/bash

cd guests/windows/server2019 && \
vagrant up --provider=libvirt && \
vagrant status

