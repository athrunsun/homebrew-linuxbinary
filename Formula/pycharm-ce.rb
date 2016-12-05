class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.3"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "3a5f1cc3643b3dbe285fad278d604c715e13adbfc21fdfbe96a8f80fa31028de"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharmc"})
    end
end
