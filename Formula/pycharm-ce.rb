class PyCharmCommunity < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "5.0.4"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "edd4bdd74a05fc4bf05c0b9cc3117a320050e1360f5d8adf8de29288d1a19972"

    bottle :unneeded

    def install
        prefix.install Dir[*]
        bin.install_symlink({"#{prefix}/bin/pycharm.sh" => "pycharmc"})
    end
end