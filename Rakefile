# If you run rake --tasks you see:
#
# rake build    # Build stalky-0.0.1.gem into the pkg directory
# rake install  # Build and install stalky-0.0.1.gem into system gems
# rake release  # Create tag v0.0.1 and build and push stalky-0.0.1.gem to Rubygems
require 'bundler'
Bundler::GemHelper.install_tasks

# rake spec     # Run specs
require 'rspec/core/rake_task'
desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  # neatly formated and colorized output
  t.rspec_opts = %w(-fs --color)
  # for voluminous warnings, uncomment below
  #t.ruby_opts  = %w(-w)
end
