#!/bin/bash

DEPS_CODE=

# @see https://stackoverflow.com/a/2954835/430062
cat << 'DEPS_CODE' > bin/code-to-video
#!/bin/bash
# CodeToVideo/run_deps

# @see https://stackoverflow.com/a/677212/430062
MISSING_DEPS=0
hash ffmpeg 2> /dev/null || { MISSING_DEPS=1; echo >&2 "ERROR: ffmpeg is required and was not found in \$PATH."; }
hash nl 2> /dev/null || { MISSING_DEPS=1; echo >&2 "ERROR: GNU nl is required and was not found in \$PATH."; }
hash split 2> /dev/null || { MISSING_DEPS=1; echo >&2 "ERROR: GNU split is required and was not found in \$PATH."; }
hash tail 2> /dev/null || { MISSING_DEPS=1; echo >&2 "ERROR: GNU tail is required and was not found in \$PATH."; }

! hash chroma 2> /dev/null || CHROMA=$(realpath "./bin/chroma")
[[ -f "${CHROMA}" ]] || {
    MISSING_DEPS=1;
    echo >&2 "ERROR: alecthomas/chroma is required and was not found in \$PATH."
    echo >&2 "       See https://github.com/alecthomas/chroma"
}
unset CHROMA

if [ "$MISSING_DEPS" -ne 0 ]; then
    exit 127
fi
unset MISSING_DEPS
# END CodeToVideo/run_deps
DEPS_CODE

cat bin/better-split bin/c2v-highlight-code bin/c2v-text-to-images bin/c2v-images-to-video >> bin/code-to-video
chmod 0755 bin/code-to-video
