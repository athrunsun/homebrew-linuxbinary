class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.3"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "613044f522d3259c236957d50a862bd2543f2e39ec016b1d4e6b7b0da51e5de9"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end
