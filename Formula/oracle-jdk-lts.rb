class OracleJdkLts < Formula
    desc "Oracle Java Standard Edition Development Kit."
    homepage "https://www.oracle.com/technetwork/java/javase/overview/index.html"
    version "11.0.1.13"

    url "https://download.oracle.com/otn-pub/java/jdk/11.0.1+13/90cf5d8f270a4347a95050320eef3fb7/jdk-11.0.1_linux-x64_bin.tar.gz",
        cookies: {
            'oraclelicense' => 'accept-securebackup-cookie',
        }

    sha256 "e7fd856bacad04b6dbf3606094b6a81fa9930d6dbb044bbd787be7ea93abc885"


    conflicts_with "azul-zulu-jdk", :because => "both install java binaries"
    conflicts_with "sap-machine-jdk", :because => "both install java binaries"
    conflicts_with "amazon-corretto@8", :because => "both install java binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
