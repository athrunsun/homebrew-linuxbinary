class FfmpegBinary < Formula
    desc "FFmpeg Static Builds."
    homepage "https://www.johnvansickle.com/ffmpeg/"
    version "3.2"

    url "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"
    sha256 "b5392ef2ec8909d2fb9d8dbd551ba3d5929511b0f7058f560fe3db13896777ca"

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
