#!/usr/bin/env bash
name="$1"
version="$2"
location_dir="$3"

#  Create Directories
cd ${location_dir}
mkdir -p ${name}/descriptor
mkdir -p ${name}/lifecycle
mkdir -p ${name}/Meta-Inf

# Create manifest file
echo "name: ${name}
version: ${version}
resource-manager: ansible" > ${name}/Meta-Inf/manifest.MF

# Create miminal descriptor
echo "name: resource::${name}::${version}
description: ${name} vnfc" > ${name}/descriptor/${name}.yml

# Create (empty) lifecycle playbooks
echo "---" > ${name}/lifecycle/Install.yml
echo "---" > ${name}/lifecycle/Uninstall.yml
echo "---" > ${name}/lifecycle/Configure.yml
echo "---" > ${name}/lifecycle/Start.yml
echo "---" > ${name}/lifecycle/Stop.yml
echo "---" > ${name}/lifecycle/Integrity.yml
