#!/bin/bash
curl -L \
    -X PATCH \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $TOKEN"\
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "https://api.github.com/repos/charles-mhm/test-bump-version-action/actions/variables/$1" \
    -d "{\"name\":\"$1\",\"value\":\"$2\"}"