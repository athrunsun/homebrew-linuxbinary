class PostgresqlBinary < Formula
    desc "PostgreSQL binary installation from EnterpriseDB."
    homepage "http://www.enterprisedb.com/"
    version "9.5.1-1"

    if MacOS.prefer_64_bit?
        url "http://get.enterprisedb.com/postgresql/postgresql-#{version}-linux-x64-binaries.tar.gz"
        sha256 "b963cdadf47c1a6f327d1496b813924141c3e81ffc90fa504f64262af438d352"
    else
        url "http://get.enterprisedb.com/postgresql/postgresql-#{version}-linux-binaries.tar.gz"
        sha256 "b963cdadf47c1a6f327d1496b813924141c3e81ffc90fa504f64262af438d352"
    end

    bottle :unneeded
    conflicts_with "postgresql"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end