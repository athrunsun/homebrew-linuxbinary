class TigerVnc < Formula
    desc "High performance, multi-platform VNC client and server."
    homepage "https://github.com/TigerVNC/tigervnc"
    version "1.7.1"

    if MacOS.prefer_64_bit?
        url "https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-#{version}.x86_64.tar.gz"
        sha256 "cdb2df7d96c6acca62e01deceee3ea1c8468606064cc51a162da413e0dd2cff5"
    else
        url "https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-#{version}.i386.tar.gz"
        sha256 "9bfb5744b6edc05039be07339aa6668b0606c1097cf9e8ae23eecca1f962ae93"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/usr/bin/*"]
    end
end
