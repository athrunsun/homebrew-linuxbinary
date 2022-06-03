class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2018.1.4"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "6cda9b2717b161387983a09ed88b39d76d88fea208601d125666c02b7c6961cf"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharm")
    end

    def caveats; <<~EOS
        Executable is linked as "pycharm".
        EOS
    end
end
