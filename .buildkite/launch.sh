#!/usr/bin/env bash
set -eu

.buildkite/dynamic_script_generator.sh | buildkite-agent pipeline upload
