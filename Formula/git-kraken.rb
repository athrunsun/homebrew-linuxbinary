class GitKraken < Formula
    desc "The downright luxurious Git client, for Windows, Mac & Linux."
    homepage "https://www.gitkraken.com/"
    version "2.6.0"
    url "https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz"
    sha256 "0e51841e518db6f8ad831eba23caad5355cfa23b8cfe742e53a9283d816bcb9d"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/gitkraken")
    end
end
