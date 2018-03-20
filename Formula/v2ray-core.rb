class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core https://www.v2ray.com"
    version "3.14"

    option "with-mirror", "Download installation archive from https://www.v2ray.com/download, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "mirror"
            url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-linux-64.zip"
        else
            url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-64.zip"
        end

        sha256 "ecb25b6423d170f8140e6ffc402cfcb991617c53ff2f4be7232845ffa8fca56b"
    else
        if build.with? "mirror"
            url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-linux-32.zip"
        else
            url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-32.zip"
        end
        
        sha256 "861f292b9585e3945158a22009d2added6748ad656e614e15bfd97ecb5bd08d4"
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
        EOS
    end
end
