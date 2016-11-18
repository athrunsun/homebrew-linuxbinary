class Rubymine < Formula
    desc "The Most Intelligent Ruby and Rails IDE."
    homepage "http://www.jetbrains.com/ruby/"
    version "2016.2.5"
    url "https://download.jetbrains.com/ruby/RubyMine-#{version}.tar.gz"
    sha256 "f7dcf7f8ae6716471bdde9ef4c58b0e87eec8986608a5be859eec2dd4ab5cce6"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/rubymine.sh" => "rubymine"})
    end
end
