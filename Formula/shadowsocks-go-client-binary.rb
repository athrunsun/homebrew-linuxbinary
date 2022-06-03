class ShadowsocksGoClientBinary < Formula
    desc "Go port of shadowsocks, client binary."
    homepage "https://github.com/shadowsocks/shadowsocks-go"
    version "1.1.5"

    url "https://github.com/shadowsocks/shadowsocks-go/releases/download/#{version}/shadowsocks-local-linux64-#{version}.gz"
    sha256 "3d7c6a0af87e6d214faff93aa46ae989d5534b6b9f01474fd3538c9a2559dd64"


    def install
        libexec.install Dir["*"]
        bin.install("#{libexec}/shadowsocks-local-linux64-#{version}" => "ssgo_local")
    end
end
