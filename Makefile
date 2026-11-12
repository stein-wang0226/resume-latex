.PHONY: all resume template songti kaiti english fonts
all: resume template
resume:
	./build.sh resume
template:
	./build.sh template
songti:
	./build.sh resume-songti
kaiti:
	./build.sh resume-kaiti
english:
	./build.sh resume-en
fonts: songti kaiti
