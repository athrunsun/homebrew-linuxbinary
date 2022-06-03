class Smartgit < Formula
    desc "SmartGit is a Git client with support for GitHub Pull Requests+Comments, SVN and Mercurial."
    homepage "http://www.syntevo.com/smartgit/"
    version "18.1.3"
    url "https://www.syntevo.com/downloads/smartgit/smartgit-linux-18_1_3.tar.gz"
    sha256 "ad12334c7608c9bcd515551caaf8711a4ebb090903b8874afdaccd9d36da74e7"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/smartgit.sh" => "smartgit")
    end

    def caveats; <<~EOS
        Executable linked as "smartgit".
        EOS
    end
end
