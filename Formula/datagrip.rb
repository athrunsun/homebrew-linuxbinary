class DataGrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "1.0.3"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}-custom-jdk-linux.tar.gz"
    sha256 "996a9d6f3e4bb643ea5470673170e89a6330af1d19728785ba3ea1d7ad008081"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/datagrip.sh" => "datagrip"})
    end
end