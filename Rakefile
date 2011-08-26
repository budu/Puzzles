task :default => :test

def scope(path)
  File.join(File.dirname(__FILE__), path)
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  test_files = FileList[scope('test/**/*_test.rb')]
  t.test_files = test_files
  t.verbose = true
end
