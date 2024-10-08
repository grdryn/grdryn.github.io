.PHONY: bake clean serve

bake: .make_bake

deploy: .make_deploy

clean:
	rm -f .make_*

serve:
	jbake --server . docs/

.make_bake: $(shell find content/ assets/ templates/ -type f | grep -v ' ')
	rm -rf docs/*
	jbake --bake . docs/
	touch .make_bake

.make_deploy: .make_bake
	git diff-index --quiet HEAD # Ensuring working directory clean
	git push origin main
	touch .make_deploy
