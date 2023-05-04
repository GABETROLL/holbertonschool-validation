# Go HTTP Server
## Prerequisites
- Bash (NOT Windows PowerShell)
- (GNU make)[https://www.gnu.org/software/make/]
- (Go)[https://gohugo.io/installation/]
### Install them
```./setup.sh```
## Lifecycle
Make website in ```dist```:
```make build```
Get rid of ```dist```:
```make clean```
Add new post the for website:
```make POST_NAME=filename.md POST_TITLE="This is the title" post```
