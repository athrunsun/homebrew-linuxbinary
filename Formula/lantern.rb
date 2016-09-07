class Lantern < Formula
    desc "Lantern is a free application that delivers fast, reliable and secure access to the open Internet."
    homepage "https://getlantern.org/"
    version "2.2.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_amd64.bz2"
        sha256 "6520d25bb049d038f7e0dc9944eac75569592114f92a22836092353c810617bb"
    else
        url "https://github.com/getlantern/lantern/releases/download/#{version}/update_linux_386.bz2"
        sha256 "da09c9650541402ceab990d73fd61f0589324f37055e4c159f7ad11760fdf1ab"
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
