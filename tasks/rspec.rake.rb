require 'rake'
require 'spec/rake/spectask'

RSPEC_TASK_OPTS = ["--format specdoc"]

Spec::Rake::SpecTask.new('core') do |t|
  t.spec_files = FileList['rspec/core/*.rb']
  t.spec_opts = RSPEC_TASK_OPTS
end

