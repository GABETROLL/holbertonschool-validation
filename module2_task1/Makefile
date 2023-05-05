lint: ## Use 'golangci-lint run' to lint the 'main.go' file
	golangci-lint run
build: ## Compile the 'main.go' server into a binary named: 'awesome-api'
# Get the mux package dependency
	go get github.com/gorilla/mux
# Initialize the Golang project with a custom identifier
	go mod init github.com/GABETROLL/awesome-api
# lint the main.go file
	build
# compile
	go build
run: ## Run the 'awesome-api' server binary, and log all of its output into 'awesome-api.log'
	./awesome-api >./awesome-api.log 2>&1 &
stop: ## Kill the server binary process
	kill "$(pgrep awesome-api)"
clean: ## Stop the server and removes the binary and log files
	stop
	rm awesome-api awesome-api.log
test: ## Send a GET request to the server link with 'curl' and logs the action and the result in the log file
	echo "HIT: healtcheck" >> awesome-api.log
	@test "$(curl http://localhost:9999/health)" = "ALIVE" \
		|| exit 1;
help: ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
# prints all of these targets and their comments (except this one)
