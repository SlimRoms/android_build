#You can find more at: https://github.com/ArchiDroid/android_build/commit/a062cc61184950df02c39a038c5bfaef5a8b268c
# General optimization level of target ARM compiled with GCC. Default: -O2
NEW_GCC_CFLAGS_ARM := -O3

# General optimization level of target THUMB compiled with GCC. Default: -Os
NEW_GCC_CFLAGS_THUMB := -O3

# Additional flags passed to all C targets compiled with GCC
NEW_GCC_CFLAGS := -O3 -fgcse-las -fivopts -fomit-frame-pointer -fsection-anchors -ftracer -ftree-loop-im -ftree-loop-ivcanon  -funswitch-loops -fweb -Wno-error=array-bounds -Wno-error=clobbered -Wno-error=maybe-uninitialized -Wno-error=strict-overflow -ffunction-sections -fdata-sections


# Flags passed to all C targets compiled with GCC
NEW_GCC_CPPFLAGS := $(NEW_GCC_CFLAGS)

# Flags passed to linker (ld) of all C and C targets compiled with GCC
NEW_GCC_LDFLAGS := -Wl,--sort-common


# CLANG

# Flags passed to all C targets compiled with CLANG
NEW_CLANG_CFLAGS := -O3 -Qunused-arguments -Wno-unknown-warning-option

# Flags passed to all C targets compiled with CLANG
NEW_CLANG_CPPFLAGS := $(NEW_CLANG_CFLAGS)

# Flags passed to linker (ld) of all C and C targets compiled with CLANG
NEW_CLANG_LDFLAGS := -Wl,--sort-common

# Flags that are used by GCC, but are unknown to CLANG. If you get "argument unused during compilation" error, add the flag here
NEW_CLANG_UNKNOWN_FLAGS := \
  -mvectorize-with-neon-double \
  -mvectorize-with-neon-quad \
  -fgcse-after-reload \
  -fgcse-las \
  -fgcse-sm \
  -fgraphite \
  -fgraphite-identity \
  -fipa-pta \
  -floop-block \
  -floop-interchange \
  -floop-nest-optimize \
  -floop-parallelize-all \
  -ftree-parallelize-loops=2 \
  -ftree-parallelize-loops=4 \
  -ftree-parallelize-loops=8 \
  -ftree-parallelize-loops=16 \
  -floop-strip-mine \
  -fmodulo-sched \
  -fmodulo-sched-allow-regmoves \
  -frerun-cse-after-loop \
  -frename-registers \
  -fsection-anchors \
  -ftree-loop-im \
  -ftree-loop-ivcanon \
  -funsafe-loop-optimizations \
  -fweb