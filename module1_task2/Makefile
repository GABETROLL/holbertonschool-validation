build: ## generates website here from 'content/' to 'dist/'.
	hugo
clean: ## removes the 'dist/' directory, containing the previously generated website.
	rm -rf dist/
post: ## creates new post md file in 'contents/post' with the name and title, in the hugo md format.
	@if [ -z "$(POST_NAME)" ]; then \
		echo "Error: POST_NAME environment variable is not set."; \
		exit 1; \
	fi
	@if [ -z "$(POST_TITLE)" ]; then \
		echo "Error: POST_TITLE environment variable is not set."; \
		exit 1; \
	fi
	echo "---\ntitle: \"$(POST_TITLE)\"\ndate: `date -Iseconds`\ndraft: true\n---\n" > content/posts/$(POST_NAME).md
help: ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
# prints all of these targets and their comments (except this one)
