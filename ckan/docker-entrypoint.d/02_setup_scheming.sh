#!/bin/bash

# Check if scheming plugin is enabled in CKAN__PLUGINS
if [[ $CKAN__PLUGINS == *"scheming"* ]]; then
    echo "Configuring Scheming plugin settings..."

    # Set all scheming configurations in one command
    ckan config-tool $CKAN_INI \
        "scheming.dataset_schemas=${SCHEMING_DATASET_SCHEMAS:-}" \
        "scheming.presets=ckanext.scheming:presets.json ckanext.knowtest:schemas/presets.yaml" \
        "scheming.dataset_fallback=false"

    echo "Scheming plugin settings configured."
fi