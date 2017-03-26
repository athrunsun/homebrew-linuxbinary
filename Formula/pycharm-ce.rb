class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2017.1"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "6669120b68873a0bcb7faf179ea79f7c2dd7eac34d377d1f574724604b70e692"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/pycharm.sh" => "pycharmc"})
    end

    def caveats; <<-EOS.undent
        Executable is linked as "pycharmc".
        EOS
    end
end
