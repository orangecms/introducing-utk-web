all:
	pandoc \
		-t beamer \
		--pdf-engine=xelatex \
		--template=template.latex \
		-fmarkdown-implicit_figures \
		-H style.pandoc \
		-V mainfont:Orbitron-VariableFont_wght.ttf \
		-V logo="img/logo.png" \
		-V classoption:aspectratio=169 \
		-V geometry:"hmargin=2.25cm, nomarginpar" \
		-o slides.pdf \
		slides.md
