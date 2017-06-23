class Visualvm < Formula
    desc "VisualVM is an All-in-One Java Troubleshooting Tool."
    homepage "https://visualvm.github.io/"
    version "1.3.9"

    url "https://github.com/oracle/visualvm/releases/download/#{version}/visualvm_139.zip"
    sha256 "90dfabfcbebe9214c8474c9edd1c36d67426b162ec642cb3527540a191812b93"

    conflicts_with "visualvm-multiple-language"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/visualvm")
    end
end
