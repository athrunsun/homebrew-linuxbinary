class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.2.3"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "a1eef156cc56eb3a36b437684b68b2e16f2575b5f1245a617eceb8352f6f4f5e"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharm"})
    end
end