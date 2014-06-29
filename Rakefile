require "rspec/core/rake_task"
require "bundler/gem_tasks"

desc "Build"
task :default => :spec

desc "Run tests"
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = %w(--color --format documentation)
end
