class V2rayBinary < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2fly/v2ray-core"
    version "4.44.0"

    if Hardware::CPU.arm?
        url "https://github.com/v2fly/v2ray-core/releases/download/v#{version}/v2ray-linux-arm64-v8a.zip"
        sha256 "6d0a432edf3df179c934656bff2a9a22c2d62f76e232766e47b8158a8d17d401"
    else
        url "https://github.com/v2fly/v2ray-core/releases/download/v#{version}/v2ray-linux-64.zip"
        sha256 "c6eb1be207fc5d23c9a18ddb0be9adda6d7255251362863d5ba2177a11528e68"
    end

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
