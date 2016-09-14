# Ansible Role Docker [![Build Status](https://travis-ci.org/mkubenka/ansible-role-docker.svg?branch=master)](https://travis-ci.org/mkubenka/ansible-role-docker)

[Docker](https://www.docker.com/) is an open-source project that automates the deployment of Linux applications inside software containers.

## Requirements

None

## Role Variables

The variables that can be passed to this role and a brief description about
them are as follows. (For all variables, take a look at [defaults/main.yml](defaults/main.yml))

```yaml

# Available repos: main, testing, experimental
docker_repo: 'main'

# Set configuration option for the daemon. https://docs.docker.com/engine/reference/commandline/dockerd/#linux-configuration-file
docker_daemon_options: 
  dns: 8.8.8.8

```

## Dependencies

None

## Example Playbook

    - hosts: servers
      roles:
         - { role: mkubenka.docker }

## License

BSD

## Author Information

Michal Kubenka <mkubenka@gmail.com>
