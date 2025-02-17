Gem::Specification.new do |s|
  s.name = 'logstash-input-http'
  s.version         = '1.0.2'
  s.licenses = ['Apache License (2.0)']
  s.summary = "Logstash Input plugin that receives HTTP requests"
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Elastic"]
  s.email = 'info@elastic.co'
  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud'
  s.add_runtime_dependency 'puma', '~> 2.11.3'

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'logstash-codec-json'
  s.add_development_dependency 'ftw'
end
