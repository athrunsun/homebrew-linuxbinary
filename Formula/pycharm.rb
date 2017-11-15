class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2017.1.4"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "bbae5602b9cf6d26ccce9e1bf8b388d79c27cf89673d1a56f248bf0a50e518ed"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharm")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "pycharm".
        EOS
    end
end
