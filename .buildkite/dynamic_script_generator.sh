#!/usr/bin/env bash
set -eu

readonly count=$(buildkite-agent meta-data get parallel-count)

echo "steps:"
echo '  - label: ":ruby: :docker:"'
echo $'    command: "ruby -e \'puts 42\'"'
echo "    parallelism: ${count}"
echo '    agents:'
echo '      queue: "${BUILDKITE_AGENT_META_DATA_QUEUE:-default}"'
echo '    plugins:'
echo '      - docker#v3.7.0:'
echo '          image: "ruby:2.7-buster"'
