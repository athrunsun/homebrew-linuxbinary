class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.2"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "6270c2feae18e10a790d7dda0ab5fed929e353ef41cb016560f7878101259d98"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end