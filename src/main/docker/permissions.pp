 
 
 file { '/home/developer/installationen':
    ensure  => directory,
    group 	=> root,
    owner 	=> developer,
    recurse => true,
  }