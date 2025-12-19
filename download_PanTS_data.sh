#!/bin/bash
set -e

# Detect GNU tar for progress indicator support
if tar --version 2>/dev/null | grep -q "GNU"; then
    TAR_PROGRESS="--checkpoint=500 --checkpoint-action=dot"
else
    TAR_PROGRESS=""
fi

cd data/

echo "Downloading metadata.xlsx..."
wget -O metadata.xlsx "https://huggingface.co/datasets/BodyMaps/PanTSMini/resolve/main/metadata.xlsx?download=true"

mkdir -p ImageTr
mkdir -p ImageTe

# Download and extract ImageTr files with progress bar
for i in {1..9}; do
    start=$(printf "%08d" $(( (i - 1) * 1000 + 1 )))
    end=$(printf "%08d" $(( i * 1000 )))
    file="PanTSMini_ImageTr_${start}_${end}.tar.gz"
    url="https://huggingface.co/datasets/BodyMaps/PanTSMini/resolve/main/${file}?download=true"

    echo "[${i}/9] Downloading $file..."
    wget --show-progress -O "$file" "$url"

    echo "[${i}/9] Extracting $file..."
    tar -xzf "$file" -C ImageTr $TAR_PROGRESS
    rm "$file"
done

# Download and extract ImageTe
file="PanTSMini_ImageTe_00009001_00009901.tar.gz"
url="https://huggingface.co/datasets/BodyMaps/PanTSMini/resolve/main/$file?download=true"
echo "Downloading ImageTe file..."
wget --show-progress -O "$file" "$url"
echo "Extracting ImageTe file..."
tar -xzf "$file" -C ImageTe $TAR_PROGRESS
rm "$file"

cd ..
