class YoutubeDlBinary < Formula
    desc "Download videos from YouTube (and more sites)."
    homepage "https://rg3.github.io/youtube-dl/"
    url "https://github.com/rg3/youtube-dl/releases/download/2016.11.22/youtube-dl"
    sha256 "e4eda57345514b970da69560360cbacd808821a4e91b735b773e6170d6668945"
    bottle :unneeded
    conflicts_with "youtube-dl"

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/youtube-dl")
        bin.install_symlink("#{libexec}/youtube-dl")
    end
end
