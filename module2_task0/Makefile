build: ## Compile the 'main.go' server into a binary named: 'awesome-api'
	go build
run: ## Run the 'awesome-api' server binary, and log all of its output into 'awesome-api.log'
	./awesome-api >./awesome-api.log 2>&1 &
stop: ## Kill the server binary process
	kill "$(pgrep awesome-api)"
clean: ## Stop the server and removes the binary and log files
	stop
	rm awesome-api awesome-api.log
test: ## Send a GET request to the server link with 'curl' and logs the action in the log file
	curl http://localhost:9999/health
	echo "HIT: healtcheck" >> awesome-api.log
help: ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
# prints all of these targets and their comments (except this one)
