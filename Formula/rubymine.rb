class Rubymine < Formula
    desc "The Most Intelligent Ruby and Rails IDE."
    homepage "http://www.jetbrains.com/ruby/"
    version "2016.3.1"
    url "https://download.jetbrains.com/ruby/RubyMine-#{version}.tar.gz"
    sha256 "be512d5d8749a3b41b5a47bfa62b7b73b75b4c511e7c771af9f0c78b8d5aa181"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/rubymine.sh" => "rubymine"})
    end
end
