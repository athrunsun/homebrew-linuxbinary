class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.2.4"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "bfd1bc75386d22bf9f0559b4894b547689383bd69c4038a1516a6e2c00f96742"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end