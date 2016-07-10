class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.1.3"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "d1cd3f9fd650c00ba85181da6d66b4b80b8e48ce5f4f15b5f4dc67453e96a179"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end