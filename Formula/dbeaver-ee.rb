class DbeaverEe < Formula
    desc "Free multi-platform database tool for developers, SQL programmers, database administrators and analysts. Supports all popular databases: MySQL, PostgreSQL, SQLite, Oracle, DB2, SQL Server, Sybase, MongoDB, etc."
    homepage "http://dbeaver.jkiss.org/"
    version "3.8.5"

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86_64.tar.gz"
        sha256 "72c34dfc11918a3e758eeda699175cdabc903fd69874346e9f225af93c32744a"
    else
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86.tar.gz"
        sha256 "298ff1244b02ac298b36f355a0c40a81137a7d6d4b874325640709a77a1db81b"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end
end
