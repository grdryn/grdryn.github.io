.PHONY: bake clean serve

bake: .make_bake

deploy: .make_deploy

clean:
	rm -f .make_*

serve:
	jbake --server . htdocs/

.make_bake: $(shell find content/ assets/ -type f | grep -v ' ')
	rm -rf htdocs/*
	jbake --bake . htdocs/
	touch .make_bake

.make_deploy: .make_bake
	git diff-index --quiet HEAD # Ensuring working directory clean
	git push origin master
	ssh $(shell git remote get-url origin | \
		sed -e 's|.*://||' -e 's|/.*||') deploy blog.grdryn.me.git
	touch .make_deploy
