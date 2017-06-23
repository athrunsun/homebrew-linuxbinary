class Lantern < Formula
    desc "Lantern is a free application that delivers fast, reliable and secure access to the open Internet."
    homepage "https://getlantern.org/"
    version "3.5.9"

    if MacOS.prefer_64_bit?
        url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_amd64.bz2"
        sha256 "0f8a73f50470aae79f3ca4db4af4974e11ab89780a808261d34cffaabd8a025b"
    else
        url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_386.bz2"
        sha256 "e4cd95dc0523ef6a2989ac15bd1a238d3ce4f4165e8f3e2333d033c40cac6be1"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        if MacOS.prefer_64_bit?
            mv("#{libexec}/update_linux_amd64", "#{libexec}/lantern")
        else
            mv("#{libexec}/update_linux_386", "#{libexec}/lantern")
        end
        chmod(0755, "#{libexec}/lantern")
        bin.install_symlink("#{libexec}/lantern")
    end
end
