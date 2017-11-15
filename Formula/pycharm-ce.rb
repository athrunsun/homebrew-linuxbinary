class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2017.2.3"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "e8562938c2ede32a1c1036391942190144cd9f0927bd49b6b3ddf5f7a01c33aa"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharmc")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "pycharmc".
        EOS
    end
end
