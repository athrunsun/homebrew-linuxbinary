class YoutubeDlBinary < Formula
    desc "Download videos from YouTube (and more sites)."
    homepage "https://rg3.github.io/youtube-dl/"
    url "https://yt-dl.org/downloads/2016.12.01/youtube-dl-2016.12.01.tar.gz"
    sha256 "ddff281a251c7a40bf8c28afa1df63e9a64ff61b6b8097535fbbe587e8ccaef7"
    bottle :unneeded
    conflicts_with "youtube-dl"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/youtube-dl")
    end
end
