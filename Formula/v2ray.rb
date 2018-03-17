class V2ray < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://www.v2ray.com"
    version "3.13"

    option "with-mirror", "Download installation archive from https://www.v2ray.com/download, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "mirror"
            url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-linux-64.zip"
        else
            url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-64.zip"
        end

        sha256 "95ac7776ec7206c1d7d55b17e8aae845a8057b4032d00bd1d2233ca959aa1609"
    else
        if build.with? "mirror"
            url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-linux-32.zip"
        else
            url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-linux-32.zip"
        end
        
        sha256 "7d28ed7b42b19c35aebe3be30b36bf0f3ecd1bf0a8a2ea2ac4b87c7d61b2189a"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
    end
end
