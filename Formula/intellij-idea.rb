class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.3.3"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "95871c9a8aed1bd8992ff493fbc5fc31674b18ef3cd509eb8f2e5650b3419eaf"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end
