class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core"
    version "3.47"

    option "with-mirror", "Download from https://v2ray.com/download."

    if MacOS.prefer_64_bit?
        if build.with? "mirror"
            url "https://v2ray.com/download/Core_v#{version}/v2ray-linux-64.zip"
        else
            url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-64.zip"
        end

        sha256 "73435afcca5f0e760b35783ff7ca2df2706c0426454411718acdeb5e082460ff"
    else
        if build.with? "mirror"
            url "https://v2ray.com/download/Core_v#{version}/v2ray-linux-32.zip"
        else
            url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-32.zip"
        end
        
        sha256 "a02c962225acc38d930edd27a4b2b4e54877b0cabf869336c2610ceb1ffa95e3"
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
