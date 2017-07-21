# Ssh Dispatcher
## install 
## init 

```bash
sshdisp init dispatcher
cd connections
```

## status

```bash
sshdisp status
```

## log

```bash
// dans un dosier ou sous dosier de  _connection_
sshdisp log
```
ou
```bash
tail -F _sshdisp.log_
```
## add a machine
```bash
sshdisp connection add _hostname_ ...
```
## send command to all
```bash
sshdisp command
```
or
```bash
cat > command_all
```
## close hostname
```bash
sshdist close hostname
```
or
```bash
rm con/hostname
```
# close dispatcher
```bash
sshdist destroy
```