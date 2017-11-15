class Sqltabs < Formula
    desc "SQL Tabs is an open source cross platform desktop client for postgresql."
    homepage "http://www.sqltabs.com/"
    version "0.12"

    url "http://www.sqltabs.com/download/sqltabs.tar.gz"
    sha256 "832494d6e6635e0b4c4cde97e1436324a36bbc9deaf37eaa44655388c26d8c42"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sqltabs")
    end

    def caveats; <<-EOS.undent
        This formula depends on libpq, you have to resolve this denpendency
        based on the linux distro you use.
        EOS
    end
end
