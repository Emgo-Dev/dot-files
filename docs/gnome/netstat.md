# Netstat

`netstat` is a linux package which allows you to monitor "...network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.".

## Kill Rampant Node Servers

You might have encountered this problem before; you're listening to ports with the `nodejs` or `node` and you accidentally use the key combo 'ctrl+z' which unhooks the process from your terminal window but leaves it running in the background, occupying the port ('ctrl+c' closes the process). We can stop the rampant process with `kill`, but we need to know the PID (Program Identification Number) of the process, `netstat` allows us to do this.

For this purpose, `netstat` logs a lot of information, however we can `pipe` the information to `grep` and search for our port that Node might be listening to:

```
$ netstat -nlp | grep :5000
```

or look for all Node instances running:

```
$ netstat -nlp | grep node
```

Here is a description of the options used in the above examples:
- `-n`: Show numerical addresses instead of trying to determine symbolic host, port or user names.
- `-l`: Show only listening sockets.
- `-p`: Show the PID and name of the program to which each socket belongs.

Using the above options, the PID will be the number before the foward slash and 'nodejs' ('???/nodejs'). Pass this to kill and you're free!

```
$ kill ???
```

- [StackOverflow: Stop All Instances of NodeJS Server](https://stackoverflow.com/questions/14790910/stop-all-instances-of-node-js-server)