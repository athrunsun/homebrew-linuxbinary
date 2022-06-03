class PgwebBinary < Formula
    desc "Cross-platform client for PostgreSQL databases, binary installation."
    homepage "https://sosedoff.github.io/pgweb"
    version "0.9.6"

    url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_amd64.zip"
    sha256 "550fb4bc628b51891a5fd5cfd48221999154343d0c2a9a4182b4151ff8464fe6"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/pgweb_linux_amd64" => "pgweb")
    end
end
