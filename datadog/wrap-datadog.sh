#!/bin/bash
# Run the provided arguments as a command, instrumented with Datadog

# Used in edxapp prod config, so copied here to keep things similar
export DD_DJANGO_USE_HANDLER_RESOURCE_FORMAT=true
export DD_DJANGO_INSTRUMENT_MIDDLEWARE=false
export DD_TRACE_REMOVE_INTEGRATION_SERVICE_NAMES_ENABLED=true
export DD_PROFILING_ENABLED=true
export DD_PROFILING_STACK_V2_ENABLED=true
export DD_PROFILING_TIMELINE_ENABLED=true
export DD_PROFILING_TAGS=variant:3.8.0
export DD_PROFILING_MEMORY_ENABLED=false
# export DD_PROFILING_MAX_FRAMES=512
# export _DD_PROFILING_STACK_V2_ADAPTIVE_SAMPLING_ENABLED=true

# variant:vanilla
# ddprof --service lms-ddprof --tags=variant:vanilla --preset cpu_live_heap --timeline --inlined_functions true "$@"

# variant:dd, DD_PROFILING_ENABLED=false was set in the inner script lms-server.sh
# ddprof --service lms-ddprof --tags=variant:dd --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v1
# DD_PROFILING_STACK_V2_ENABLED=false ddprof --service lms-ddprof --tags=variant:v1 --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v2
# ddprof --service lms-ddprof --tags=variant:v2 --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v2-patch
# ddprof --service lms-ddprof --tags=variant:v2-patch --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

# variant:v2-2048
# DD_PROFILING_MAX_FRAMES=2048 ddprof --service lms-ddprof --tags=variant:v2-2048 --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"

#ddtrace-run "$@"
#"$@"

# variant:sigtrap
#ddprof --service lms-ddprof --tags=variant:sigtrap-clock --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"


ddprof --service lms-ddprof --tags=variant:3.8.0 --preset cpu_live_heap --timeline --inlined_functions true ddtrace-run "$@"
#"$@"


# ddprof --service lms-ddprof --tags=variant:py-spy --preset cpu_live_heap --timeline --inlined_functions true py-spy top --subprocesses --nonblocking -- "$@"
