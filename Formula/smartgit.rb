class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "17.0.2"
    url "http://www.syntevo.com/static/smart/download/smartgit/smartgit-linux-17_0_2.tar.gz"
    sha256 "7ceb72627230d428eae67e86df3f1408e873b944f066bc277e770597c071ff16"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/smartgit.sh" => "smartgit")
    end
end
