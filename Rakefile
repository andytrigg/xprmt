# require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

# require 'rake'
# # ENV['CI_REPORTS']="reports"

# Dir.glob('lib/tasks/**/*.rake').each { |task| load task }


if Bundler.rubygems.loaded_specs 'rspec'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |task|
    task.fail_on_error = true
  end
  task :default => [:spec]
end
