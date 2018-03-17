class V2ray < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://www.v2ray.com"
    version "3.13"

    if MacOS.prefer_64_bit?
        url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-linux-64.zip"
        sha256 "95ac7776ec7206c1d7d55b17e8aae845a8057b4032d00bd1d2233ca959aa1609"
    else
        url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-linux-32.zip"
        sha256 "7d28ed7b42b19c35aebe3be30b36bf0f3ecd1bf0a8a2ea2ac4b87c7d61b2189a"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install("#{libexec}/v2ray")
        bin.install("#{libexec}/v2ctl")
    end
end
