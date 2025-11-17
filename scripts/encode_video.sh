#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: scripts/encode_video.sh <input_mov> <output_mp4>

Transcodes an Apple MOV file into an h264/aac MP4 that works across browsers.
Requires `ffmpeg` to be installed locally (https://ffmpeg.org/).
EOF
}

if [[ $# -ne 2 ]]; then
  usage
  exit 1
fi

input_path="$1"
output_path="$2"

mkdir -p "$(dirname "$output_path")"

# Convert while keeping width <=1280px, enabling faststart for streaming, and using a balanced CRF.
ffmpeg -i "$input_path" \
  -vf "scale='min(1280,iw)':-2" \
  -c:v libx264 -profile:v high -preset medium -crf 22 -pix_fmt yuv420p \
  -movflags +faststart \
  -c:a aac -b:a 128k \
  "$output_path"
