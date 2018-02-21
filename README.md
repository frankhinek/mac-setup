# mac setup
> macOS setup, powered by Ansible

## Compatibility

This Ansible playbook and the associated tasks have only been tested on macOS
Sierra and High Sierra.

## Usage

```console
$ wget https://github.com/frankhinek/mac-setup/archive/master.zip
$ unzip master.zip
$ cd mac-setup-master/
```

At this point, you might want to edit the `main.yml` file and comment
out stuff you don't want, when you're done, simply run:

```console
$ ./setup
```

## Thanks

Rather than forking an existing Ansible macOS or Linux setup repository I
started from a blank canvas and added only what I needed.  However, nearly every
bit of this was copied directly from or heavily based on work by the individuals
listed below. Thanks to all that shared their code!

* [caarlos0/machine](https://github.com/caarlos0/machine)
