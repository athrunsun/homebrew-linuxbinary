class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "2017.2.2"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.tar.gz"
    sha256 "966b02edc6a65b0d6f36a7d00805bfd021cfb1a82f3e76f99facbcc45d311ed1"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/datagrip.sh" => "datagrip")
    end

    def caveats; <<~EOS
        Executable is linked as "datagrip".
        EOS
    end
end
