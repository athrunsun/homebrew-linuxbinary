class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "2016.2.4"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.tar.gz"
    sha256 "d54f5d16830e80761cc52398e9ba2762ec30f23564f7593125951f23556b9128"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/datagrip.sh" => "datagrip"})
    end
end
