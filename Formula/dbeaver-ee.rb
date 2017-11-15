class DbeaverEe < Formula
    desc "Free multi-platform database tool for developers, SQL programmers, database administrators and analysts. Supports all popular databases: MySQL, PostgreSQL, SQLite, Oracle, DB2, SQL Server, Sybase, MongoDB, etc."
    homepage "http://dbeaver.jkiss.org/"
    version "4.0.5"

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86_64.tar.gz"
        sha256 "a337d6640804add109d28bbc8b1f7b8d10b2326e1f06fccfb7e8fa429121f7eb"
    else
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86.tar.gz"
        sha256 "19fc544a27d176e806d46096d28d5a5b083f29eadaa90323f4ac1f141b5b5e49"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end
end
