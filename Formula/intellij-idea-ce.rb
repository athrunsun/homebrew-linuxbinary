class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.2.5"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "1bccc6689c5a140cc8e3b6496a07c7c7c2d2b403034aaff98ace0c9badd63734"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end
