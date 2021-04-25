export TMPDIR=~/.tmp
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=~/.ccache
ccache --set-config=max_size=50.0G

export SKIP_ABI_CHECKS=true
export WITHOUT_CHECK_API=true
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
