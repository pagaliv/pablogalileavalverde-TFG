#!/bin/bash

echo "Compilando TFG..."

pdflatex -output-directory=auxiliares main.tex
biber --output-directory auxiliares main
pdflatex -output-directory=auxiliares main.tex
pdflatex -output-directory=auxiliares main.tex

# Mover el PDF generado al directorio principal
mv auxiliares/main.pdf main.pdf

echo "¡Listo! Abriendo PDF..."
xdg-open main.pdf