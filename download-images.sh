#!/bin/bash
# Run this script once to download all images from Unsplash.
# Requires: curl
# Usage: cd responsibility-ocean-plastic && bash download-images.sh

IMG_DIR="$(dirname "$0")/img"
mkdir -p "$IMG_DIR"

echo "Downloading images to $IMG_DIR ..."

curl -L "https://images.unsplash.com/photo-1621451537084-482c73073a0f?w=1600&q=80" \
  -o "$IMG_DIR/hero-plastic.jpg" && echo "✓ hero-plastic.jpg"

curl -L "https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?w=800&q=80" \
  -o "$IMG_DIR/sorting-facility.jpg" && echo "✓ sorting-facility.jpg"

curl -L "https://images.unsplash.com/photo-1494412651409-8963ce7935a7?w=1600&q=80" \
  -o "$IMG_DIR/container-port.jpg" && echo "✓ container-port.jpg"

curl -L "https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&q=80" \
  -o "$IMG_DIR/plastic-bottles.jpg" && echo "✓ plastic-bottles.jpg"

curl -L "https://images.unsplash.com/photo-1604187351574-c75ca79f5807?w=1600&q=80" \
  -o "$IMG_DIR/riverbank-litter.jpg" && echo "✓ riverbank-litter.jpg"

echo ""
echo "All images downloaded. Open index.html in your browser."
