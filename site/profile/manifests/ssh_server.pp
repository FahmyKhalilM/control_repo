class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdZNDlYJDy0mqF9KP343mIanOuKms9oMZVoMAWr4cHK08ZHlTsFeBQOq2/3iupeIKTlR1SAFowoUrxb4Ki2zRD5LV+rvilKq+BhEQhUaJrAqQqhT/6rcwiL/M25Cg3th8TF3L9CPFAePtDOS2ueov6Yng+xRTB2JFzOW27uM55Zx+ApwmkryAOa1lZeXZDnYSqNJ7nP0xEB6RkhH8awZ6UrnIn8q0qQGLEBf0qvGZCaM+xSrbTaPrJnjKaM1c7LbkguBybZMN2b6Ju0nWK0l2HQdFNlbMEvXd5S/6A2u1aEuUTOHa5ruyDoV/SAnaPGaaEeXkaI5+XBTJxPmfE72BV',
  }  
}
