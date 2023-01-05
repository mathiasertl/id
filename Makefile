index.html.sig: index.html
	gpg -b --yes -u 0xE8172F2940EA9F709842290870BD9664FA3947CD index.html

id.er.tl.tar.gz:
	git archive --format=tar.gz --prefix=id.er.tl/ HEAD > id.er.tl.tar.gz

deploy: id.er.tl.tar.gz
	cat id.er.tl.tar.gz | ssh skathi tar xzf - -C /var/www/

.PHONY: id.er.tl.tar.gz
