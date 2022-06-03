class MicroBinary < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    version "1.4.1"

    url "https://github.com/zyedidia/micro/releases/download/v#{version}/micro-#{version}-linux64.tar.gz"
    sha256 "e7d4c9427f9fdfed78e69d42cf518e93ae15fc8f70b7f0f87d292ed81206e900"

    conflicts_with "micro"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/micro")
    end

    def caveats; <<~EOS
        Executable is linked as "micro".
        EOS
    end
end
