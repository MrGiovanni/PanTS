#!/bin/bash
set -e

PanTSMini_Label_URL=${1:-NA}

cd data/

if [ "$PanTSMini_Label_URL" != "NA" ]; then
    # Download and extract PanTSMini_Label.tar.gz
    echo "Downloading PanTSMini_Label.tar.gz..."
    wget --show-progress -O PanTSMini_Label.tar.gz "$PanTSMini_Label_URL"

    echo "Extracting PanTSMini_Label.tar.gz..."
    mkdir -p LabelAll
    tar -xzf PanTSMini_Label.tar.gz -C LabelAll --checkpoint=1000 --checkpoint-action=echo="."
    rm PanTSMini_Label.tar.gz

    mkdir -p LabelTr
    mkdir -p LabelTe

    echo "Moving training labels (PanTS_00000001 to PanTS_00009000)..."
    # Use find with xargs for efficiency - moves files in large batches
    # This is much more efficient than spawning 9000 individual mv processes via seq
    cd LabelAll
    
    # Use find to move directories in the training range (PanTS_00000001 to PanTS_00009000)
    # Exclude testing range (PanTS_00009001-PanTS_00009901) to avoid overlaps
    find . -maxdepth 1 -type d \( \
           -name 'PanTS_00000*' -o \
           -name 'PanTS_00001*' -o \
           -name 'PanTS_00002*' -o \
           -name 'PanTS_00003*' -o \
           -name 'PanTS_00004*' -o \
           -name 'PanTS_00005*' -o \
           -name 'PanTS_00006*' -o \
           -name 'PanTS_00007*' -o \
           -name 'PanTS_00008*' \
    \) ! -name 'PanTS_00009[0-9][0-9][0-9]' -print0 | xargs -0 -r mv -t ../LabelTr/
    # Also move PanTS_00009000 specifically (it's in training range)
    [ -d PanTS_00009000 ] && mv PanTS_00009000 ../LabelTr/
    cd ..

    echo "Moving testing labels (PanTS_00009001 to PanTS_00009901)..."
    # Move all remaining directories (testing labels: PanTS_00009001 to PanTS_00009901)
    cd LabelAll
    find . -maxdepth 1 -type d -name 'PanTS_00009*' -print0 | xargs -0 -r mv -t ../LabelTe/
    cd ..

    rmdir LabelAll 2>/dev/null || true
else
    echo "Please email Zongwei Zhou (zzhou82@jh.edu) to request the early access to the PanTSMini_Label.tar.gz file."
fi

cd ..
