#!/bin/bash

set -Eeuo pipefail

generateDockerfile() {
    sedReplace="
        s!%%VARIANT%%!${variant:-slim}!g;
        s!%%COMPOSER_VERSION%%!${composer_version:-2}!g;
        s!%%PHP_VERSION%%!$php_version!g;
        s!%%PHP_DISTRO%%!$php_distro!g;
    "

    sed -r "$sedReplace" $1
}

generateDockerfile "${1}/Dockerfile.template" > Dockerfile