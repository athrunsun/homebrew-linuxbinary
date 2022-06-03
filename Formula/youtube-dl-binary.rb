class YoutubeDlBinary < Formula
    desc "Download videos from YouTube (and more sites)."
    homepage "https://rg3.github.io/youtube-dl/"
    version "2018.06.19"
    url "https://yt-dl.org/downloads/#{version}/youtube-dl-#{version}.tar.gz"
    sha256 "e68ff7b344d24ecc7714b6c91ddbb833c438ac3e654d9f8fbdb29e4c10ab427b"
    conflicts_with "youtube-dl"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/youtube-dl")
    end

    def caveats; <<~EOS
        Executable is linked as "youtube-dl".
        EOS
    end
end
