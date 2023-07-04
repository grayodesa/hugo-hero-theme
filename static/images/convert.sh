#!/bin/bash
find . -type f \( -name "*.jpg" -o -name "*.png" \) -exec sh -c '
  for img do
    cwebp -q 80 "$img" -o "${img%.*}.webp"
  done
' sh {} +

