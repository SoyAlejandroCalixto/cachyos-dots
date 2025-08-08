#!/usr/bin/env bash
set -euo pipefail

echo "🔄 Conversor continuo de MP4 a MOV"
echo "📝 Presiona Ctrl+C para salir en cualquier momento"
echo ""

while true; do
    printf '🎬 Arrastra un archivo .mp4 aquí y pulsa Enter (o Ctrl+C para salir): '
    IFS= read -r line || exit 1

    # Elimina espacios en los extremos
    src="${line#"${line%%[![:space:]]*}"}"  # elimina espacios iniciales
    src="${src%"${src##*[![:space:]]}"}"    # elimina espacios finales

    if [ ! -f "$src" ]; then
        echo "❌ Archivo no encontrado: '$src'"
        echo ""
        continue
    fi

    out="${src%.*}.mov"
    
    echo "🔄 Convirtiendo: $(basename "$src")"
    
    if ffmpeg -hide_banner -loglevel error -stats -y -i "$src" \
        -c:v prores_ks -profile:v 3 -pix_fmt yuv422p10le \
        -c:a pcm_s16le \
        "$out"; then
        echo "✅ Listo: $out"
    else
        echo "❌ Error durante la conversión"
    fi
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
done