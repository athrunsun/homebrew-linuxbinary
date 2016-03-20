class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.1"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "d8d889c42dfde1f41030e9d3f5850d364109df73a6a35081edc72d7d95f22fbf"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end