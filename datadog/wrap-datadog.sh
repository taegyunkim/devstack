#!/bin/bash
# Run the provided arguments as a command, instrumented with Datadog

# Used in edxapp prod config, so copied here to keep things similar
export DD_DJANGO_USE_HANDLER_RESOURCE_FORMAT=true
export DD_DJANGO_INSTRUMENT_MIDDLEWARE=false
export DD_TRACE_REMOVE_INTEGRATION_SERVICE_NAMES_ENABLED=true
export DD_PROFILING_ENABLED=true
export DD_PROFILING_STACK_V2_ENABLED=true
export DD_PROFILING_TIMELINE_ENABLED=true

#ddprof --service lms-debug-native-v1 --preset cpu_live_heap --tags stack:v2-maxf --timeline --inlined_functions true ddtrace-run "$@"
ddtrace-run "$@"
