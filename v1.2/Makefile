build: clean
	cat *.md > tmp.md
	ruby word_replace.rb tmp.md
	pandoc -s tmp.md --reference-docx=template.dotx -o The_eduScrum_Guide_1.2_ja.docx
	rm tmp.md

html: clean
	cat *.md > tmp.md
	ruby word_replace.rb tmp.md
	pandoc -s tmp.md -c style.css -o The_eduScrum_Guide_1.2_ja.html
	rm tmp.md

clean:
	rm -f *.html
	rm -f *.docx
	rm -f tmp.md


