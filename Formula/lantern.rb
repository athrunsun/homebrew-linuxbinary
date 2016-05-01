class Lantern < Formula
    desc "Lantern is a free application that delivers fast, reliable and secure access to the open Internet."
    homepage "https://getlantern.org/"
    version "2.1.2"

    if MacOS.prefer_64_bit?
        url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_amd64.bz2"
        sha256 "45aec7d3bfe82f061bcb42172395eb8598994c3f3d3a269645de77f58e0f36fc"
    else
        url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_386.bz2"
        sha256 "a36308fcdf9d64ee93b6b61f7849cb184160743cf6054cd43fe3fccb24730ba1"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        if MacOS.prefer_64_bit?
            FileUtils.mv("#{libexec}/update_linux_amd64", "#{libexec}/lantern")
        else
            FileUtils.mv("#{libexec}/update_linux_386", "#{libexec}/lantern")
        end
        FileUtils.chmod(0755, "#{libexec}/lantern")
        bin.install_symlink({"#{libexec}/lantern" => "lantern"})
    end
end
