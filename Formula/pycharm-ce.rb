class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.2.3"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "8ea07f6ff9f63a56cd6c779a3b1727157e177c2c4da8c056dec60b056e03f05a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharmc"})
    end
end