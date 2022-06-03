class DiveBinary < Formula
    desc "A tool for exploring each layer in a docker image"
    homepage "https://github.com/wagoodman/dive"
    version "0.4.1"

    url "https://github.com/wagoodman/dive/releases/download/v0.4.1/dive_0.4.1_linux_amd64.tar.gz"
    sha256 "f7817df91342212ac42af4e8c08ffbc18ebd89b8890138dca2758dd156f99fd4"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dive")
    end

    def caveats; <<~EOS
        Executable linked as "dive".
        EOS
    end
end
