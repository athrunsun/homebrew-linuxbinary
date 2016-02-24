class DbeaverEe < Formula
    desc "Free multi-platform database tool for developers, SQL programmers, database administrators and analysts. Supports all popular databases: MySQL, PostgreSQL, SQLite, Oracle, DB2, SQL Server, Sybase, MongoDB, etc."
    homepage "http://dbeaver.jkiss.org/"
    version "3.6"

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/dbeaver-ee-latest-linux.gtk.x86_64.tar.gz"
        sha256 "f60966dd5caa067edd00baa672d68c0f2a54c95dc44154782c072779bdbf24fc"
    else
        url "http://dbeaver.jkiss.org/files/dbeaver-ee-latest-linux.gtk.x86.tar.gz"
        sha256 "3e823daea200846a2e3ed355291d4a63e0730e2f302ea1fe811176fafe514b62"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end
end