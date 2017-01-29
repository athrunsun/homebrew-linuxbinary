class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.3.2"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "e1092d3692118f9097e4182edfccc76159160353b7d7379cada3249b9e2d4f39"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharmc"})
    end
end
