class DbeaverCe < Formula
    desc "Free multi-platform database tool for developers, SQL programmers, database administrators and analysts. Supports any database which has JDBC driver (which basically means - ANY database)."
    homepage "http://dbeaver.jkiss.org/"
    version "4.0.8"

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-linux.gtk.x86_64.tar.gz"
        sha256 "61a123c25ef87425adfabdbab0c9385c23dc407027c55ad538970efd82eec77a"
    else
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-linux.gtk.x86.tar.gz"
        sha256 "bb62c7db1d0f86309888389c9dc2e52c7362ddb52e48b6cf3d8fc496400b4ffe"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver" => "dbeaverc")
    end
end
