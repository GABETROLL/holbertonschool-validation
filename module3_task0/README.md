# Go HTTP Server
## Prerequisites
- (GNU make)[https://www.gnu.org/software/make/]
- (Go)[https://go.dev/]
### Install them
```./setup.sh```
## Lifecycle
Compile the server code (``main.go``) into the server binary (``awesome-api``)
(BUT ONLY IF ``make lint`` SUCCEEDS):
```make build```
Run the server (``awesome-api``) and log everything it outputs to ``awesome-api.log``
(IN THE BACKGROUND):
```make run```
Stop the server:
```make stop```
Stop the server, and delete the log file (``awesome-api``) and the Go compiler's output files:
```make clean```
Test the server:
```make test```
Help:
```make help```
Lint ``main.go``:
```make lint```
Run the unit-tests on ``main.go`` using ``main_test.go``:
```go test -v -short -coverprofile=coverage-units.out```
