#this script is SPECIFICALLY for Ubuntu 10.04 LTS 
require 'rubygems'
require 'net/ssh'

# uncomment and set these to connect 
# HOST = 'domain'
# USER = 'user'
# PASS = 'pass'
 
 Net::SSH.start( HOST, USER, :password => PASS ) do|ssh|
 update = ssh.exec!('apt-get update')
 puts update
 upgrade = ssh.exec!('apt-get -y upgrade')
 puts upgrade
 build_essential = ssh.exec!('apt-get -y install build-essential')
 puts build_essential 
 git = ssh.exec!('apt-get -y install git-core')
 puts git
 testgit = ssh.exec!('git')
 puts testgit
 apache2php = ssh.exec!('apt-get -y install apache2 php5 php5-mysql php5-dev php5-curl php5-gd php5-imagick php5-cli')
 puts apache2php 
 testapache2 = ssh.exec!('curl -i http://example.com')
 puts testapache2
 
 rvminstall = ssh.exec!('bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)')
 puts rvminstall
 ssh.exec!('sleep 5')
 rvmrubyinstallzlib = ssh.exec!('/usr/local/rvm/bin/rvm pkg install zlib')
 puts rvmrubyinstallzlib
 rvmisntallruby192 = ssh.exec!('/usr/local/rvm/bin/rvm install 1.9.2 --with-zlib-dir=$rvm_path/usr')
 puts rvmisntallruby192

 rvmuse = ssh.exec!('/usr/local/rvm/bin/rvm use 1.9.2')
 puts rvmuse
 end
