class AzulZuluJdk < Formula
    desc "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu"
    version "11.2.3"

    url "https://cdn.azul.com/zulu/bin/zulu11.2.3-jdk11.0.1-linux_x64.tar.gz"
    sha256 "232b1c3511f0d26e92582b7c3cc363be7ac633e371854ca2f2e9f2b50eb72a75"


    conflicts_with "oracle-jdk-lts", :because => "both install java binaries"
    conflicts_with "sap-machine-jdk", :because => "both install java binaries"
    conflicts_with "amazon-corretto@8", :because => "both install java binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
