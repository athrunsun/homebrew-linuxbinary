class YoutubeDlBinary < Formula
    desc "Download videos from YouTube (and more sites)."
    homepage "https://rg3.github.io/youtube-dl/"
    version "2017.01.28"
    url "https://yt-dl.org/downloads/#{version}/youtube-dl-#{version}.tar.gz"
    sha256 "3ca165456799a9a60c875caed37e70c8fe3279326f2715837fcdc4304c64be99"
    bottle :unneeded
    conflicts_with "youtube-dl"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/youtube-dl")
    end
end
