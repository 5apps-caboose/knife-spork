$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'knife-spork'
  gem.version       = '1.3.3'
  gem.authors       = ["Jon Cowie"]
  gem.email         = 'jonlives@gmail.com'
  gem.homepage      = 'https://github.com/jonlives/knife-spork'
  gem.licenses      = ['GPL']
  gem.summary       = "A workflow plugin to help many devs work with the same chef repo/server"
  gem.description   = "A workflow plugin to help many devs work with the same chef repo/server"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "knife-spork"
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'chef', '>= 11.0.0'
  gem.add_runtime_dependency 'git', '>= 1.2.5'
  gem.add_runtime_dependency 'app_conf', '>= 0.4.0'
  gem.add_runtime_dependency 'diffy', '>= 3.0.1'
end
