# Go HTTP Server
## Prerequisites
- (GNU make)[https://www.gnu.org/software/make/]
- (Go)[https://go.dev/]
### Install them
```./setup.sh```
## Lifecycle
Make website in ```dist```:
```make build```
Get rid of ```dist```:
```make clean```
Add new post the for website:
```make POST_NAME=filename.md POST_TITLE="This is the title" post```
