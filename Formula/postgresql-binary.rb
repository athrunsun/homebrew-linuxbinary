class PostgresqlBinary < Formula
    desc "PostgreSQL binary installation from EnterpriseDB."
    homepage "http://www.enterprisedb.com/"
    version "9.6.0-1"

    url "http://get.enterprisedb.com/postgresql/postgresql-#{version}-linux-binaries.tar.gz"
    sha256 "4da4eb3c5f0e2baade3ca24241796dbecfe728019238944833793b05fe245e84"

    bottle :unneeded
    conflicts_with "postgresql"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
