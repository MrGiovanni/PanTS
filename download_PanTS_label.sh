#!/bin/bash
set -e

PanTSMini_Label_URL=${1:-http://www.cs.jhu.edu/~zongwei/dataset/PanTSMini_Label.tar.gz}

# Detect GNU tar for progress indicator support
if tar --version 2>/dev/null | grep -q "GNU"; then
    TAR_PROGRESS="--checkpoint=1000 --checkpoint-action=dot"
else
    TAR_PROGRESS=""
fi

cd data/

# Download and extract PanTSMini_Label.tar.gz
echo "Downloading PanTSMini_Label.tar.gz..."
wget --show-progress -O PanTSMini_Label.tar.gz "$PanTSMini_Label_URL"

echo "Extracting PanTSMini_Label.tar.gz..."
mkdir -p LabelAll
tar -xzf PanTSMini_Label.tar.gz -C LabelAll $TAR_PROGRESS
rm PanTSMini_Label.tar.gz

mkdir -p LabelTr
mkdir -p LabelTe

echo "Moving training labels (PanTS_00000001 to PanTS_00009000)..."
# Use find with -exec ... + for efficiency - moves files in large batches
# This is much more efficient than spawning 9000 individual mv processes via seq
cd LabelAll

# Move directories in the training range using a tight pattern
# Pattern PanTS_0000[0-8]* matches PanTS_00000001 to PanTS_00008999
# Then explicitly add PanTS_00009000
# Use sh -c wrapper for cross-platform compatibility (mv -t is GNU-only)
find . -maxdepth 1 -type d \( \
       -name 'PanTS_0000[0-8]*' -o \
       -name 'PanTS_00009000' \
\) -exec sh -c 'mv "$@" ../LabelTr/' _ {} +
cd ..

echo "Moving testing labels (PanTS_00009001 to PanTS_00009901)..."
# Move all remaining directories (testing labels: PanTS_00009001 to PanTS_00009901)
# Use sh -c wrapper for cross-platform compatibility (mv -t is GNU-only)
cd LabelAll
find . -maxdepth 1 -type d -name 'PanTS_00009*' -exec sh -c 'mv "$@" ../LabelTe/' _ {} +
cd ..

rmdir LabelAll 2>/dev/null || true

cd ..
