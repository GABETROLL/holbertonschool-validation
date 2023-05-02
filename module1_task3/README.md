# HUGO Website with help
## Prerequisites
- Bash (NOT Windows PowerShell)
- (Git)[https://git-scm.com/]
- (GNU make)[https://www.gnu.org/software/make/]
- (hugo)[https://gohugo.io/installation/]
### Install them
```./setup.sh```
## Lifecycle
Make website in ```dist```:
```make build```
Get rid of ```dist```:
```make clean```
Add new post the for website:
```make POST_NAME=filename.md POST_TITLE="This is the title" post```