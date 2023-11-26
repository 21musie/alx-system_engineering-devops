#!/usr/bin/env bash
# this is a puppet manifest to configure client, authenticate without password
file {'~/.ssh/school'
ensure  => file,
owner   => root,
group   => root,
mode    => '644',
content => "
host 52393-web-01
  HostName 100.26.231.12
  port 22
  User ubuntu
  IdentifyFile ~/.ssh/school
  PasswordAuthentication no
",
}
