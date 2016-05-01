class FfmpegBinary < Formula
    desc "FFmpeg Static Builds."
    homepage "http://johnvansickle.com/ffmpeg/"
    version "3.0.2"

    if MacOS.prefer_64_bit?
        url "http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"
        sha256 "30cbe47c9b76a8c466be1684f1c51ca76787f989ac29c5b6b5db39c4eb253eae"
    else
        url "http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-32bit-static.tar.xz"
        sha256 "b6687383307db8bdc298974436724a7a3e93e874f0bb7f00acae97fba467ff74"
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
