#!/bin/bash

# TODO brew install duti jq

jq -cr '.[]' vscode.json | while read filetype; do
  duti -s com.microsoft.VSCode $filetype all
done