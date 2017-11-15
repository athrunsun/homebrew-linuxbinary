class ShadowsocksGoClientBinary < Formula
    desc "Go port of shadowsocks, client binary."
    homepage "https://github.com/shadowsocks/shadowsocks-go"
    version "1.1.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/shadowsocks/shadowsocks-go/releases/download/#{version}/shadowsocks-local-linux64-#{version}.gz"
        sha256 "3d7c6a0af87e6d214faff93aa46ae989d5534b6b9f01474fd3538c9a2559dd64"
    else
        url "https://github.com/shadowsocks/shadowsocks-go/releases/download/#{version}/shadowsocks-local-linux32-#{version}.gz"
        sha256 "6485dbb7b65965844d0a676673afdf2dbbae92e284fd61d68a4e4894ff36b07e"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install("#{libexec}/shadowsocks-local-linux64-#{version}" => "ssgo_local")
        else
            bin.install("#{libexec}/shadowsocks-local-linux32-#{version}" => "ssgo_local")
        end
    end
end
