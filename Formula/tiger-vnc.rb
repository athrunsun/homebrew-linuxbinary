class TigerVnc < Formula
    desc "High performance, multi-platform VNC client and server."
    homepage "https://github.com/TigerVNC/tigervnc"
    version "1.8.0"

    url "https://bintray.com/tigervnc/stable/download_file?file_path=tigervnc-#{version}.x86_64.tar.gz"
    sha256 "be6b51016c27cbc854c37ec5379bd89d74d15387bf103ff7cd1c8c2924f164a7"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/usr/bin/*"]
    end
end
