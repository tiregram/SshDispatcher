# Ssh Dispatcher
## install 
## init 

```bash
sshdisp init dispatcher
cd dispatcher
```

## status

```bash
sshdisp status
```

## log

```bash
// dans un dosier ou sous dosier 
sshdisp log
```
ou
```bash
tail -F log
```
## add a machine
```bash
sshdisp connection add _hostname_
```
## send command to all
```bash
sshdisp command
```
## close hostname
```bash
sshdist remove hostname
```
or
```bash
rm con/hostname
```
## close dispatcher
```bash
sshdist destroy
```

# add a new functionality
- add a file in Ss/script/
- chown  +x  on it
- respond to --help  and --help-brief
- do what you want


# TODO
get - to read a exported value in all connection
set - to export a diferent value in all connection
send - to send message to the process run by the bash over ssh
restore - after a shutdown to recreate connection to host



