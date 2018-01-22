class Rubymine < Formula
    desc "The Most Intelligent Ruby and Rails IDE."
    homepage "http://www.jetbrains.com/ruby/"
    version "2017.1.4"
    url "https://download.jetbrains.com/ruby/RubyMine-#{version}.tar.gz"
    sha256 "1f991efdda770d5e267d70bc6f547bb2417d485533940888c88f304bad02531a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/rubymine.sh" => "rubymine")
    end

    def caveats; <<~EOS
        Executable is linked as "rubymine".
        EOS
    end
end
