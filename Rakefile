task install: ['install:all']
namespace :install do
  task :dependencies do
    system 'gem install bundler'
    system 'bundle install'
  end

  task :puppet do
    system 'bundle exec librarian-puppet install --path puppet/modules'
  end

  task all: %w(dependencies puppet)
end

namespace :packer do
  task :push do
    system 'packer push --name=RyanFrench/ubuntu64-dev template.json'
  end

  task :validate do
    system 'packer validate template.json'
  end

  task :test do
    system 'packer build --only=vmware-iso template.json'
  end
end
