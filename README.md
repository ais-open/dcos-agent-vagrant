# DC/OS Agent - Vagrant

Vagrant configuration to extend a DC/OS cluster with workstation hosted agents.

## Usage

Add a new node to the cluster from your local workstation:

```
vagrant up
```

_NOTE:_ By default this will allocate 2 cores and 4GB of memory from your machine to the cluster.
If you would prefer to change that, edit the appropriate values in the Vagrantfile.
At minimum, give 1GB of memory as any less will be mostly used by the DC/OS / Mesos agent processes.
