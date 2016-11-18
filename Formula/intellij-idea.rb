class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.2.5"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "30a4ddf82b8393fc22803c9335d6cb00087116dd09915e44f40f0433b81b1b3d"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end
