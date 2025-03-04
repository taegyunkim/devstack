#!/bin/bash
# Run the provided arguments as a command, instrumented with Datadog

# Used in edxapp prod config, so copied here to keep things similar
export DD_DJANGO_USE_HANDLER_RESOURCE_FORMAT=true
export DD_DJANGO_INSTRUMENT_MIDDLEWARE=false
export DD_TRACE_REMOVE_INTEGRATION_SERVICE_NAMES_ENABLED=true
export DD_PROFILING_ENABLED=true
export DD_PROFILING_STACK_V2_ENABLED=true
export DD_PROFILING_TIMELINE_ENABLED=true

# variant:vanilla
ddprof --service lms-ddprof --tags=variant:vanilla --preset cpu_live_heap --timeline --inlined_functions true "$@"

# variant:dd
# DD_PROFILING_ENABLED=false ddprof --service lms-ddprof --tags=variant:dd --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v1
# DD_PROFILING_STACK_V2_ENABLED=false ddprof --service lms-ddprof --tags=variant:v1 --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v2
# ddprof --service lms-ddprof --tags=variant:v2 --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v2-patched
# ddprof --service lms-ddprof --tags=variant:v2-patched --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

#ddtrace-run "$@"
#"$@"
