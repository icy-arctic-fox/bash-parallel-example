#!/usr/bin/env bash
set -eu

.buildkite/dynamic_step_generator.sh | buildkite-agent pipeline upload
