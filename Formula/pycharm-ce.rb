class PycharmCe < Formula
    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2018.1.4"
    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "90953ca424bb331348e3575975fab4e189ab126ddc367223e3a7cb01b1563f3b"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharmc")
    end

    def caveats; <<~EOS
        Executable is linked as "pycharmc".
        EOS
    end
end
