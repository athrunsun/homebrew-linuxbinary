class DnscryptProxyBinary < Formula
    desc "A flexible DNS proxy, with support for encrypted DNS protocols."
    homepage "https://github.com/jedisct1/dnscrypt-proxy https://dnscrypt.info/"
    version "2.0.7"

    url "https://github.com/jedisct1/dnscrypt-proxy/releases/download/#{version}/dnscrypt-proxy-linux_x86_64-#{version}.tar.gz"
    sha256 "109a9b2f08b2f3f9f68ef62fed3a20a5e05b84415d02c00ad4086a2401041b53"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dnscrypt-proxy")
    end

    def caveats; <<~EOS
        Executable linked as "dnscrypt-proxy".
        EOS
    end
end
