#!/bin/bash

if cargo semver-checks \
    --baseline-root ./old-version \
    --manifest-path ./new-version/Cargo.toml ; then

    echo "#######################################"
    echo "##    cargo-semver-check succeeds    ##"
    echo "#######################################"
else
    echo "#######################################"
    echo "##     cargo-semver-check fails      ##"
    echo "#######################################"
fi

sed 's#@@LIB_PATH@@#../old-version/#' ./dependant/Cargo.toml.template > ./dependant/Cargo.toml

if cargo build --manifest-path dependant/Cargo.toml --quiet; then
    echo "#######################################"
    echo "##     Dependant with old builds     ##"
    echo "#######################################"
else
    echo "#######################################"
    echo "## Dependant with old fails to build ##"
    echo "#######################################"
fi

sed 's#@@LIB_PATH@@#../new-version/#' ./dependant/Cargo.toml.template > ./dependant/Cargo.toml

if cargo build --manifest-path dependant/Cargo.toml --quiet; then
    echo "#######################################"
    echo "##     Dependant with new builds     ##"
    echo "#######################################"
else
    echo "#######################################"
    echo "## Dependant with new fails to build ##"
    echo "#######################################"
fi
