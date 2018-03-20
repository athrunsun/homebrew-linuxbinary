class DnscryptProxy < Formula
    desc "A flexible DNS proxy, with support for encrypted DNS protocols."
    homepage "https://github.com/jedisct1/dnscrypt-proxy https://dnscrypt.info/"
    version "2.0.7"

    if MacOS.prefer_64_bit?
        url "https://github.com/jedisct1/dnscrypt-proxy/releases/download/#{version}/dnscrypt-proxy-linux_x86_64-#{version}.tar.gz"
        sha256 "109a9b2f08b2f3f9f68ef62fed3a20a5e05b84415d02c00ad4086a2401041b53"
    else
        url "https://github.com/jedisct1/dnscrypt-proxy/releases/download/#{version}/dnscrypt-proxy-linux_i386-#{version}.tar.gz"
        sha256 "856b84e2779f36ab5e6c64a77c0f33dcbd53c630fc1705f5bb51bb05fd774eaa"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dnscrypt-proxy")
    end

    def caveats; <<~EOS
        Executable linked as "dnscrypt-proxy".
        EOS
    end
end
