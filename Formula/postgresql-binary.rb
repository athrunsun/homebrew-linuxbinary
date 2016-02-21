class PostgresqlBinary < Formula
    desc "PostgreSQL binary installation from EnterpriseDB."
    homepage "http://www.enterprisedb.com/"
    version "9.5.1-1"

    if MacOS.prefer_64_bit?
        url "http://get.enterprisedb.com/postgresql/postgresql-#{version}-linux-x64-binaries.tar.gz"
        sha256 "1d85f85cd9e8236038b90ce5c078d22bd458fe8f924b46c4d341e3344753c309"
    else
        url "http://get.enterprisedb.com/postgresql/postgresql-#{version}-linux-binaries.tar.gz"
        sha256 "630e6dafedf96e2dc61f6c1e584fdc0debcf9f099ebd5ec05ffbd379d41cec61"
    end

    bottle :unneeded
    conflicts_with "postgresql"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end