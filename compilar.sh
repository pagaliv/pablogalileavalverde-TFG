#!/bin/bash
echo "Compilando TFG..."

pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex

echo "¡Listo! Abriendo PDF..."
xdg-open main.pdf