class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2017.1.4"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "1e69ab29215a9c8c4626de6727df433ae0d9f6ed46eba2a6f48ffa52c2b04256"

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
