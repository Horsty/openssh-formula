# -*- coding: utf-8 -*-
# vim: ft=yaml
---
sshd_config:
  # This keyword is totally optional
  ConfigBanner: |
    # Alternative banner for the config file
    # (Indented) hash signs lose their special meaning here
    # and the lines will be written as-is.
  Port: 22
  Protocol: 2
  #HostKey:
  #  - /etc/ssh/ssh_host_rsa_key
  #  - /etc/ssh/ssh_host_dsa_key
  #  - /etc/ssh/ssh_host_ecdsa_key
  #  - /etc/ssh/ssh_host_ed25519_key
  SyslogFacility: AUTHPRIV
  #LogLevel: INFO
  ClientAliveInterval: 60
  ClientAliveCountMax: 5
  LoginGraceTime: 120
  PermitRootLogin: 'no'
  PasswordAuthentication: 'no'
  #StrictModes: 'yes'
  MaxAuthTries: 3
  MaxSessions: 5
  PubkeyAuthentication: 'yes'
  #AuthorizedKeysCommand: '/usr/bin/sss_ssh_authorizedkeys'
  #AuthorizedKeysCommandUser: 'nobody'
  #IgnoreRhosts: 'yes'
  #HostbasedAuthentication: 'no'
  #PermitEmptyPasswords: 'no'
  ChallengeResponseAuthentication: 'no'
  AuthenticationMethods: 'publickey'
  AuthorizedKeysFile: '%h/.ssh/authorized_keys'
  X11Forwarding: 'no'
  #X11DisplayOffset: 10
  PrintMotd: 'no'
  #PrintLastLog: 'yes'
  #TCPKeepAlive: 'yes'
  AcceptEnv: "LANG LC_*"
  Subsystem: "sftp /usr/lib/openssh/sftp-server"
  UsePAM: 'yes'
  UseDNS: 'no'
  AllowGroups:
    - sysadmin
