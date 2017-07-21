# Ssh Dispatcher
## install 
## init 

sshdisp init dispatcher
cd connections

## status
sshdisp status

## log

// dans un dosier ou sous dosier de  _connection_
sshdisp log

ou

tail -F _sshdisp.log_

## add a machine

sshdisp connection add _hostname_ ...

## send command to all

sshdisp command
or
cat > command_all

## close hostname
sshdist close hostname
or
rm con/hostname

# close dispatcher
sshdist destroy
or
rm connections