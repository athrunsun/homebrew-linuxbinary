class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2016.2"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "8ac7bdb58af1d3fec7b850fc158b4da72d33d140ad01daca0d3f0afac1c7aa14"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharm"})
    end
end