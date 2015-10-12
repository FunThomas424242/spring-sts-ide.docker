
  package { 'puppet-lint':
    ensure   => '1.1.0',
    provider => 'gem',
  }


  file { '/home/developer/installationen':
    ensure  => directory,
    group 	=> root,
    owner 	=> developer,
    recurse => true,
  }


  class { 'sts::params':
    pInstall => '/home/developer/installationen',
  }

  include sts

