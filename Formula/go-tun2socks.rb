class GoTun2socks < Formula
    desc "A tun2socks implementation written in Go."
    homepage "https://github.com/eycorsican/go-tun2socks"
    version "1.8"

    url "https://github.com/eycorsican/go-tun2socks/releases/download/v#{version}/tun2socks-linux-amd64.zip"
    sha256 "0ff181a36997ae7ea4d0c5b1513f6cf64dfad58b20f10cd50081187227694986"


    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/build/tun2socks-linux-amd64")
        bin.install_symlink("#{libexec}/build/tun2socks-linux-amd64" => "go-tun2socks")
    end

    def caveats; <<~EOS
        Executable is linked as "go-tun2socks".
        EOS
    end
end
