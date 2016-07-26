class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.2"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "334eaa740d963cf12bf2e5c2107909d16238b739c2afa017dc4587103eb60176"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharmc"})
    end
end