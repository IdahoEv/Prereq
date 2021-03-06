Gem::Specification.new do |spec|
  spec.name		= "Prereq"
  spec.version		= "0.0.0"
  author_list = {
    "Evan Dorn"     => 'evan@lrdesign.com'
  }
  spec.authors		= author_list.keys
  spec.email		= spec.authors.map {|name| author_list[name]}
  spec.summary		= "Development dependencies / prerequisites library"
  spec.description	= <<-EndDescription
  Do your new developers have the environment correctly set up? Use Prereq to set
  up a dependency checker!
  EndDescription

  spec.rubyforge_project= spec.name.downcase
  spec.homepage        = "http://idahoev.github.com/#{spec.name.downcase}"
  spec.required_rubygems_version = Gem::Requirement.new(">= 0") if spec.respond_to? :required_rubygems_version=

  # Do this: y$@"
  # !!find lib bin doc spec spec_help -not -regex '.*\.sw.' -type f 2>/dev/null
  spec.files		= %w[
    lib/prereq.rb
  ]

  spec.test_file        = "spec_help/gem_test_suite.rb"
  spec.licenses = ["MIT"]
  spec.require_paths = %w[lib/]
  spec.rubygems_version = "1.3.5"

  spec.has_rdoc		= true
  spec.extra_rdoc_files = Dir.glob("doc/**/*")
  spec.rdoc_options	= %w{--inline-source }
  spec.rdoc_options	+= %w{--main doc/README }
  spec.rdoc_options	+= ["--title", "#{spec.name}-#{spec.version} Documentation"]

  #spec.add_dependency("", "> 0")
  spec.add_dependency("rspec")
  spec.add_dependency("text-table", "~> 1.2.3")

  #spec.post_install_message = "Thanks for installing my gem!"
end
