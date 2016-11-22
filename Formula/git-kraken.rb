class GitKraken < Formula
    desc "The downright luxurious Git client, for Windows, Mac & Linux."
    homepage "https://www.gitkraken.com/"
    version "1.9.1"
    url "https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz"
    sha256 "71bc394150053bb83e1ec5497952675f416be044de500759deecbe081a21d80e"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/gitkraken" => "gitkraken"})
    end
end
