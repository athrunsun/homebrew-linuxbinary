class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "2016.1"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.tar.gz"
    sha256 "9bd8a78ff5ad8344dbd111bf3a48a277f71fd8a8347d3fb9a1c09af4320eb9e3"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/datagrip.sh" => "datagrip"})
    end
end
