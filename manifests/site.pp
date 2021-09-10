node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  file {'/root/README':
       owner   => 'root',
  }
   }
  file {'/root/kimo':
       owner   => 'root',
  }
}
