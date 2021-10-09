# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "coppermind"
  spec.version       = "3.0"
  spec.authors       = ["Jesse Williamson"]
  spec.email         = ["jnathanwilliamson@gmail.com"]

  spec.summary       = "A one-column minimal responsive Jekyll blog theme"
  spec.homepage      = "https://github.com/zivhub/monophase"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|_data|LICENSE|README|categories\.md|about\.md|tags\.md|years\.md|index\.html|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15.1"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7.1"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
end
