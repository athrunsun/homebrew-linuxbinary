class SapMachineJdk < Formula
    desc "An OpenJDK release maintained and supported by SAP"
    homepage "https://github.com/SAP/SapMachine"
    version "11.0.1.13"

    url "https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.1%2B13-0/sapmachine-jdk-11.0.1.13_linux-x64_bin.tar.gz"
    sha256 "41d70861c71d33ed437d28f3aaa0a22543b83271c35b7910cd8613961dee3d2f"


    conflicts_with "oracle-jdk-lts", :because => "both install java binaries"
    conflicts_with "azul-zulu-jdk", :because => "both install java binaries"
    conflicts_with "amazon-corretto@8", :because => "both install java binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
