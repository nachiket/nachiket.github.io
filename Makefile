all: awards.html cv.html fpga_tracker.html index.html research.html teaching.html

awards.html: awards.md
	pandoc --columns=160 awards.md -s -c stylesheets/styles.css -o awards.html --metadata pagetitle="Awards"

cv.html: cv.md
	pandoc --columns=160 cv.md -s -c stylesheets/styles.css -o cv.html \-\-metadata pagetitle="Curriculum Vitae"

cv.pdf: cv.md
	pandoc  -V geometry:margin=1in -f markdown+hard_line_breaks cv.md -o cv.pdf

fpga_tracker.html: fpga_tracker.md
	pandoc --columns=160 fpga_tracker.md -s -c stylesheets/styles.css -o fpga_tracker.html --metadata pagetitle="FPGA Tracker"

index.html: index.md
	pandoc --columns=160 index.md -s -c stylesheets/styles.css --metadata pagetitle="Nachiket Kapre's Academic Webpage" -o index.html

teaching.html: teaching.md
	pandoc --columns=160 teaching.md -s -c stylesheets/styles.css -o teaching.html --metadata pagetitle="Teaching"

research.html: research.md
	pandoc --columns=160 research.md -s -c stylesheets/styles.css \-\-metadata pagetitle="Research" -o research.html
