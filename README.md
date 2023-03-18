This repository contains various scripts to bootstrap dev environments.

Any scripts in this repository aim to meet the following principles -
1. All bootstraps use init.sh as the entry script. Running init.sh should bootstrap the environment accordingly.
1. Clear documentation and instructions so that it's clear what is being done.
1. No expectations on the environment being run.
1. All operations must be idempotent.
1. No user details or secrets must be stored. Anything that requires user details or secrets needs to be requested or generated at runtime.