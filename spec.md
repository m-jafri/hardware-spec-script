### Display CPU Information

To display detailed CPU information on a Unix-like system, use the following command:

```sh
cat /proc/cpuinfo
```

### Display Total RAM

To display detailed memory information on a Unix-like system, use the following command:

```sh
cat /proc/meminfo
grep MemTotal /proc/meminfo
```
Use the second command to get a concise result

### Display total disk space

```sh
df -h
```

### Display specs of GPU (if any)
```sh
nvidia-smi
```

