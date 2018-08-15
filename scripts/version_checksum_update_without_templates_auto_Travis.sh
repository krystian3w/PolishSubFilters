#!/bin/bash

# Sciezka to miejsce, w którym znajduje się skrypt
sciezka=$(dirname "$0")

cd $sciezka/..

ost_zmieniony_plik=$(git diff -z --name-only -- '*.txt' -- ':!/internal-filters/zewnetrzne_listy.txt'| xargs -0)

$sciezka/version_checksum_update_without_templates_Travis.sh $ost_zmieniony_plik
