class profile::ssh_server {
    package {'openssh-server':
        ensure => present,
    }
    service {'sshd':
        ensure => 'running',
        enable => 'true',
    }
    ssh_authorized_key {'root@master.puppet.vm':
        ensure => present,
        user => 'root',
        type => 'ssh-rsa',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHs7SXi8K29aVVZSoItar19qc5seeqHXKpR/TjzPhRz8QrsRypyP79pzCHCUoJ/7RKIIGC4bH4Xlw/f9gVW3XBNTzZF3/ua9y4Wnq2WoEh+L7dtFHJZjzLc4nDxisWAzND9ASH3BxDLR7WdlKAPnjBhKOlFzoJLynpSHrYU/hxcIKwI58IyJPhoNClNmxyCTxTla3hDIOup/TnuYSSLzOX3AIbzxgwZilg3xhe7Rh1AZ4PGVMHH/hGATPYlBjQ2RAakieK4TzNmYmABV49w0IVl2dOtnM6jIXvEzJn9K4wPpwRvREwWxFKBYbXMfkvVM+u46LaetrNQh9+wYyUw4r7',   
    }
}
