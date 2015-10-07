#You can find more at: https://github.com/ArchiDroid/android_build/commit/a062cc61184950df02c39a038c5bfaef5a8b268c
# General optimization level of target ARM compiled with GCC. Default: -O2
NUCLEAR_GCC_CFLAGS_ARM := -O3

# General optimization level of target THUMB compiled with GCC. Default: -Os
NUCLEAR_GCC_CFLAGS_THUMB := -Os

# Additional flags passed to all C targets compiled with GCC
NUCLEAR_GCC_CFLAGS := -O3 -fgcse-las -fgraphite -fgraphite-identity -fgcse-sm -fipa-pta -fivopts -fomit-frame-pointer -frename-registers -fsection-anchors -ftracer -ftree-loop-im -ftree-loop-ivcanon -funsafe-loop-optimizations -funswitch-loops -fweb -Wno-error=array-bounds -Wno-error=clobbered -Wno-error=maybe-uninitialized -Wno-error=strict-overflow


# Flags passed to all C targets compiled with GCC
NUCLEAR_GCC_CPPFLAGS := $(NUCLEAR_GCC_CFLAGS)

# Flags passed to linker (ld) of all C and C targets compiled with GCC
NUCLEAR_GCC_LDFLAGS := -Wl,--sort-common


# CLANG

# Flags passed to all C targets compiled with CLANG
NUCLEAR_CLANG_CFLAGS := -O3 -Qunused-arguments -Wno-unknown-warning-option

# Flags passed to all C targets compiled with CLANG
NUCLEAR_CLANG_CPPFLAGS := $(NUCLEAR_CLANG_CFLAGS)

# Flags passed to linker (ld) of all C and C targets compiled with CLANG
NUCLEAR_CLANG_LDFLAGS := -Wl,--sort-common

# Flags that are used by GCC, but are unknown to CLANG. If you get "argument unused during compilation" error, add the flag here
NUCLEAR_CLANG_UNKNOWN_FLAGS := \
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
  -fsection-anchors \
  -Wno-error=clobbered \
  -fweb


# Most of the flags are increasing code size of the output binaries, especially O3 instead of Os for target THUMB
# This may become problematic for small blocks, especially for boot or recovery blocks (ramdisks)
# If you don't care about the size of recovery.img, e.g. you have no use of it, and you want to silence the
# error "image too large" for recovery.img, use this definition
NUCLEAR_IGNORE_RECOVERY_SIZE := true 