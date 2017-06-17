class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "2017.1.4"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.tar.gz"
    sha256 "c351e44a176add5b1fc7462e780b3fbe157691c3e23552d9d6b6531ee3830338"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/datagrip.sh" => "datagrip"})
    end

    def caveats; <<-EOS.undent
        Executable is linked as "datagrip".
        EOS
    end
end
