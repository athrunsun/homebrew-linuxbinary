class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "8.0.0"
    url "http://www.syntevo.com/static/smart/download/smartgit/smartgit-linux-8_0_0.tar.gz"
    sha256 "14abe17c6cec181044a92736086acb0c9034907bbf12685222338f057fbacaf4"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/smartgit.sh" => "smartgit"})
    end
end
