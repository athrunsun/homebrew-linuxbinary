class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "8.0.3"
    url "http://www.syntevo.com/static/smart/download/smartgit/smartgit-linux-8_0_3.tar.gz"
    sha256 "4308cfaf07a3e9c95267c159472871071a0831b9d81a81b3e35388daca931dbe"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/smartgit.sh" => "smartgit"})
    end
end
