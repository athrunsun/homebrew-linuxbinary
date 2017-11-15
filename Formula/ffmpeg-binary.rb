class FfmpegBinary < Formula
    desc "FFmpeg Static Builds."
    homepage "https://www.johnvansickle.com/ffmpeg/"
    version "3.2"

    if MacOS.prefer_64_bit?
        url "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"
        sha256 "b5392ef2ec8909d2fb9d8dbd551ba3d5929511b0f7058f560fe3db13896777ca"
    else
        url "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-32bit-static.tar.xz"
        sha256 "fa264a2d8524b488434313abab072302df3f7dc2e05dffb9014349e43f42b344"
    end

    bottle :unneeded
    conflicts_with "ffmpeg"

    devel do
        if MacOS.prefer_64_bit?
            url "https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz"
            sha256 "49b4d18ad85bfb05c827c3ca1bef5a9c2b5db890f137a09a8582e11224fc6b2a"
        else
            url "https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-32bit-static.tar.xz"
            sha256 "e1a4cca873d547e538057685399beee6ef1a4713190a4acec6746056fa80d5a4"
        end
    end

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/ffmpeg")
        bin.install_symlink("#{libexec}/ffmpeg-10bit")
        bin.install_symlink("#{libexec}/ffprobe")
        bin.install_symlink("#{libexec}/ffserver")
        bin.install_symlink("#{libexec}/qt-faststart")
    end
end
