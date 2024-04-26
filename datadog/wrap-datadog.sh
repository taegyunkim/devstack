#!/bin/bash
# Run the provided arguments as a command, instrumented with Datadog

# Used in prod config, so copied here to keep things similar
export DD_DJANGO_USE_HANDLER_RESOURCE_FORMAT=true
export DD_DJANGO_INSTRUMENT_MIDDLEWARE=false


ddtrace-run "$@"
