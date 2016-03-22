build:
	cat *.md > tmp.md
	pandoc -s tmp.md --reference-docx=template.dotx -o The_eduScrum_Guide_1.2_ja.docx
	rm tmp.md

html:
	cat *.md > tmp.md
	pandoc -s tmp.md -c style.css -o The_eduScrum_Guide_1.2_ja.html
	rm tmp.md

clean:
	rm *.html *.docx tmp.md

