class TigerVnc < Formula
    desc "High performance, multi-platform VNC client and server."
    homepage "https://github.com/TigerVNC/tigervnc"
    version "1.7.0"

    if MacOS.prefer_64_bit?
        url "https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-#{version}.x86_64.tar.gz"
        sha256 "c55506f222633d763f001d47aa8329ec7744e5da858ae8f03582db2c5b85390a"
    else
        url "https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-#{version}.i386.tar.gz"
        sha256 "f1fcc2e8920ff2c8e5f7e6346b5824c04c9f7d88e75185091bd0ccc714a795ff"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/usr/bin/*")
    end
end
