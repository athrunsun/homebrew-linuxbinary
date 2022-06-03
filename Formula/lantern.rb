class Lantern < Formula
    desc "Lantern is a free application that delivers fast, reliable and secure access to the open Internet."
    homepage "https://getlantern.org/"
    version "3.5.9"

    url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_amd64.bz2"
    sha256 "0f8a73f50470aae79f3ca4db4af4974e11ab89780a808261d34cffaabd8a025b"


    def install
        libexec.install Dir["*"]
        mv("#{libexec}/update_linux_amd64", "#{libexec}/lantern")
        chmod(0755, "#{libexec}/lantern")
        bin.install_symlink("#{libexec}/lantern")
    end
end
