class MitmproxyBinary < Formula
    desc "An interactive TLS-capable intercepting HTTP proxy for penetration testers and software developers."
    homepage "https://github.com/mitmproxy/mitmproxy"
    version "4.0.4"

    url "https://snapshots.mitmproxy.org/#{version}/mitmproxy-#{version}-linux.tar.gz"
    sha256 "382c675a439afa97338f5971946cd6fc7b1648350dc9af16aac39884efaa6494"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/mitmproxy")
        bin.install_symlink("#{libexec}/mitmweb")
        bin.install_symlink("#{libexec}/mitmdump")
    end

    def caveats; <<~EOS
        Executables are linked as "mitmproxy", "mitmweb", "mitmdump".
        EOS
    end
end
