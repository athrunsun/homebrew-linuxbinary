class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "7.1.4"
    url "https://www.syntevo.com/downloads/smartgit/smartgit-linux-7_1_4.tar.gz"
    sha256 "66e22d01689a8cd1b25accf397c89fdc0389c73df821ca45bf084370825e83ad"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/smartgit.sh" => "smartgit"})
    end
end
