class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "7.1.3"
    url "https://www.syntevo.com/downloads/smartgit/smartgit-linux-7_1_3.tar.gz"
    sha256 "823d47da1c03cb78a5d4e338621ccf0c3a11edc0de0774f954c3ac07a6689268"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/smartgit.sh" => "smartgit"})
    end
end
