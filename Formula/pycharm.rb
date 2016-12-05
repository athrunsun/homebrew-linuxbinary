class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.3"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "e988f1704bc89d3972cbba956a93af7b920d1777197f14b5081ebccfcf5991ac"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharm"})
    end
end
