class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.1"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "eb0fef2d110d99ccff34883e3b0ebd32a4c6503af3af13711c9187307cc3cb97"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end