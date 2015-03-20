@echo off
echo "Clean the working directory..."
del *.aux
del *.bbl
del *.blg
del *.log
del *.toc
echo "Compile initial PDF..."
pdflatex main.tex
echo "Setup bibliography..."
bibtex main.aux
echo "Integrate bibliography..."
pdflatex main.tex
echo "Solve cross-reference..."
pdflatex main.tex
echo "Compile PDF complete!"
pause