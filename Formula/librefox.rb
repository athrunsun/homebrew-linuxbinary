class Librefox < Formula
    desc "Firefox with privacy enhancements."
    homepage "https://github.com/intika/Librefox"
    version "2.1"

    url "https://github.com/intika/Librefox/releases/download/Librefox-v#{version}-v64.0.0/Librefox-#{version}-Firefox-Linux-60.4.0-x64-ESR.tar.xz"
    sha256 "29b7825de5364c467f0383208374519b8881d3097129328328651a697479a553"


    conflicts_with "librefox-esr", :because => "both install `librefox` binary"

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
