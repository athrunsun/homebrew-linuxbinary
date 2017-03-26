class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2017.1"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "6e5223fa4b50e459ad6b03d33b6184ec59791aedd97048f50588602ded6071e7"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharm"})
    end
end
