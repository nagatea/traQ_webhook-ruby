
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "traq_webhook/version"

Gem::Specification.new do |spec|
  spec.name          = "traq_webhook"
  spec.version       = TraqWebhook::VERSION
  spec.authors       = ["nagatech"]
  spec.email         = ["cheesecakebot@yahoo.co.jp"]

  spec.summary       = %q{traQ Webhook用ライブラリ}
  spec.description   = %q{デジタル創作同好会traPのSNSツールtraQのWebhookを簡単に扱うためのライブラリ}
  spec.homepage      = "https://github.com/nagatea/traQ_webhook-ruby"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/nagatea/traQ_webhook-ruby"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
