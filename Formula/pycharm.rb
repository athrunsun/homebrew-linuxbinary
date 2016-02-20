class PyCharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "5.0.4"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "8cd7e85435f0ad04a0540037436ae9593608cf7f456bf8ff1d44f659572ec8dc"

    bottle :unneeded

    def install
        prefix.install Dir[*]
        bin.install_symlink({"#{prefix}/bin/pycharm.sh" => "pycharm"})
    end
end