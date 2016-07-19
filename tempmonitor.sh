
#!/bin/sh
gpu=$(nvidia-smi -q -d temperature | awk '/GPU Current Temp/{print $5}')
echo "${gpu}°C"
