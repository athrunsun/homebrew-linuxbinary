class AmazonCorrettoAT8 < Formula
    desc "A no-cost, multi-platform, production-ready distribution of OpenJDK8"
    homepage "https://github.com/corretto/corretto-8"
    version "8.202.08.2"

    url "https://d2znqt9b1bc64u.cloudfront.net/amazon-corretto-#{version}-linux-x64.tar.gz"
    sha256 "c19a928687479e1036ff1d6e023975402d2f027d9b3e4d64cfaf0c9f35bf9669"


    conflicts_with "azul-zulu-jdk", :because => "both install java binaries"
    conflicts_with "sap-machine-jdk", :because => "both install java binaries"
    conflicts_with "oracle-jdk-lts", :because => "both install java binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
