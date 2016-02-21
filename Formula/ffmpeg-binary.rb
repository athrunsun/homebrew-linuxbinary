class FfmpegBinary < Formula
    desc "FFmpeg Static Builds."
    homepage "http://johnvansickle.com/ffmpeg/"
    version "3.0"

    if MacOS.prefer_64_bit?
        url "http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"
        sha256 "c1b299502311c70a607e63bbbb928a1f5093fa9301e5add4f8fb319044c1a864"
    else
        url "http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-32bit-static.tar.xz"
        sha256 "14b878161346789936c708f7c818193f9fd6a046ff35d909d326711d6ec74b34"
    end

    bottle :unneeded
    conflicts_with "ffmpeg"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/ffmpeg")
        bin.install_symlink("#{libexec}/ffmpeg-10bit")
        bin.install_symlink("#{libexec}/ffprobe")
        bin.install_symlink("#{libexec}/ffserver")
        bin.install_symlink("#{libexec}/qt-faststart")
    end
end