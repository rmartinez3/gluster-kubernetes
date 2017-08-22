#!/bin/bash

DEMO_DIR="$(dirname "${0}")"
VAGRANT_DIR="${DEMO_DIR}/.."

. "${DEMO_DIR}/util.sh"

cd "${VAGRANT_DIR}" || exit 1

desc "show machines"
run "vagrant status"

desc "running demo on master..."
run ""

"${DEMO_DIR}/demo-inside-wrapper.sh" "${DEMO_DIR}/demo-inside-deploy.sh"
