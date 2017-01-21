class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.3.3"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "c80c6e32190555d48182ae22876ca29171a4ad2c042eb3461ddf3b82a4fb39ed"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end
