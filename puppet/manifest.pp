class { 'rbenv': }

rbenv::plugin { 'sstephenson/ruby-build': }
rbenv::build { '2.3.0': global => true }
rbenv::build { '2.2.2': global => false }
rbenv::plugin { 'rbenv/rbenv-gem-rehash': }

class { 'nvm':
  user         => 'vagrant',
}

nvm::node::install { '0.12':
  user    => 'vagrant',
  default => true,
}
