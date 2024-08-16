run:
	npm run dev

saveIt:
	@if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "You must provide a commit message."; \
		exit 1; \
	fi
	git add . && git commit -m "$(filter-out $@,$(MAKECMDGOALS))"

%:
	@:
