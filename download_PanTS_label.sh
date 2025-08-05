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
    tar -xzf PanTSMini_Label.tar.gz -C LabelAll
    rm PanTSMini_Label.tar.gz

    mkdir -p LabelTr
    mkdir -p LabelTe

    echo "Moving training labels..."
    for i in $(seq 1 9000); do
        folder=$(printf "PanTS_%08d" "$i")
        mv "LabelAll/$folder" LabelTr/
    done

    echo "Moving testing labels..."
    for i in $(seq 9001 9901); do
        folder=$(printf "PanTS_%08d" "$i")
        mv "LabelAll/$folder" LabelTe/
    done

    rmdir LabelAll 2>/dev/null || true
else
    echo "Please email Zongwei Zhou (zzhou82@jh.edu) to request the early access to the PanTSMini_Label.tar.gz file."
fi

cd ..
