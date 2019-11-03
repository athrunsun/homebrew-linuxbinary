class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core"
    version "4.21.3"

    url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-64.zip"
    sha256 "7db90a290cd945a2c802fd07907dd9b008b9b26b5d057730e4f1d438965b219a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
        chmod(0755, "#{libexec}/v2ray")
        chmod(0755, "#{libexec}/v2ctl")
        bin.install_symlink("#{libexec}/geoip.dat")
        bin.install_symlink("#{libexec}/geosite.dat")
    end

    def caveats; <<~EOS
        Executable linked as "v2ray" and "v2ctl".
        "geoip.dat" and "geosite.dat" are also installed as symlinks.
        EOS
    end
end
