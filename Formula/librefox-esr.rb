class LibrefoxEsr < Formula
    desc "Firefox with privacy enhancements, ESR version."
    homepage "https://github.com/intika/Librefox"
    version "2.1"

    url "https://github.com/intika/Librefox/releases/download/Librefox-v#{version}-v64.0.0/Librefox-#{version}-Firefox-Linux-64.0.0-x64.tar.xz"
    sha256 "0ad576311da91732c6219f79b8d1e0ea97c76ac8065768878de5d80f26bd8b09"


    conflicts_with "librefox", :because => "both install `librefox` binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "librefox")
    end

    def caveats; <<~EOS
        Executable is linked as "librefox".
        For more usage information, see "librefox --help".
        EOS
    end
end
