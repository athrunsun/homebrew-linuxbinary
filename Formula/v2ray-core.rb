class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core"
    version "3.37"

    if MacOS.prefer_64_bit?
        url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-64.zip"
        sha256 "a937b87702400f5de6beb12f4c9d9c630d5c01cb85443b313c38e5921b845df4"
    else
        url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-32.zip"
        sha256 "b2441b11c38a2ec23f2458f532edda52dc908e53036a96ba2466192ba694440e"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
        bin.install_symlink("#{libexec}/geoip.dat")
        bin.install_symlink("#{libexec}/geosite.dat")
    end

    def caveats; <<~EOS
        Executable linked as "v2ray" and "v2ctl".
        "geoip.dat" and "geosite.dat" are also installed as symlinks.
        EOS
    end
end
