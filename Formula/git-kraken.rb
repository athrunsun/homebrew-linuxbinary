class GitKraken < Formula
    desc "The downright luxurious Git client, for Windows, Mac & Linux."
    homepage "https://www.gitkraken.com/"
    version "3.5.1"
    url "https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz"
    sha256 "f12cb1c4a6dfd18310ac5022bcf53fc9d610b43c66e111d17faea71f83fdc4b5"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/gitkraken")
    end
end
