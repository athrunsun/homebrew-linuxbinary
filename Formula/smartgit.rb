class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "7.1.1"
    url "https://www.syntevo.com/downloads/smartgit/smartgit-linux-7_1_1.tar.gz"
    sha256 "b963cdadf47c1a6f327d1496b813924141c3e81ffc90fa504f64262af438d352"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/smartgit.sh" => "smartgit"})
    end
end