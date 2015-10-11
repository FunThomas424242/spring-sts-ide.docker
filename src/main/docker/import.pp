# put this somewhere global, like site.pp
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


# save current vars
file { "/tmp/facts.yaml":
    content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
}



#
# puppetlabs
#

# puppetlabs-concat
exec { "puppetlabs-concat-modul":
    command => "sudo puppet module install --force puppetlabs-concat",
}

# stdlib
exec { "stdlib-modul":
    command => "sudo puppet module install --force puppetlabs-stdlib",
}

# apt
exec { "apt-modul":
    command => "sudo puppet module install --force puppetlabs-apt",
}

# vcsrepo 
exec { "vcsrepo-modul":
    command => "sudo puppet module install --force puppetlabs-vcsrepo",
}

# counsyl-sys
exec { "counsyl-sys-modul":
    command => "sudo puppet module install --force counsyl-sys",
}


# gini-archive
exec { "gini-archive-modul":
    command => "sudo puppet module install --force gini-archive",
}

#
# maestrodev
#


# wget 
exec { "masestrodev-wget-modul":
    command => "sudo puppet module install --force maestrodev-wget",
}

# git 
exec { "git-modul":
    command => "sudo puppet module install --force maestrodev-git",
}

#
# funthomas424242
#

# geppetto 
exec { "sts-modul":
    command => "sudo puppet module install --force funthomas424242-sts",
    path    => "/usr/local/bin/:/bin/:/usr/bin",
}
