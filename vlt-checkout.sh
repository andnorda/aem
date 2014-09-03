#!/bin/bash

pushd content/src/main/content/jcr_root
vlt --credentials admin:admin checkout -f ../META-INF/vault/filter.xml --force http://localhost:4502/crx
popd
