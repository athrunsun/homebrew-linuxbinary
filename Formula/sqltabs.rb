class Sqltabs < Formula
    desc "SQL Tabs is an open source cross platform desktop client for postgresql."
    homepage "http://www.sqltabs.com/"
    version "1.0.0"

    url "https://github.com/sasha-alias/sqltabs/releases/download/v1.0.0/sqltabs.linux.tar.gz"
    sha256 "67e15b5d8ed5e2baa176ac650b394c1f0fdeb6dc6e0e493f1ef3acc1569c1c82"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sqltabs")
    end

    def caveats; <<~EOS
        This formula depends on libpq, you have to resolve this denpendency
        based on the linux distro you use.
        EOS
    end
end
