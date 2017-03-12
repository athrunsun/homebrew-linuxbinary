class DbeaverCe < Formula
    desc "Free multi-platform database tool for developers, SQL programmers, database administrators and analysts. Supports any database which has JDBC driver (which basically means - ANY database)."
    homepage "http://dbeaver.jkiss.org/"
    version "4.0.2"

    if MacOS.prefer_64_bit?
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-linux.gtk.x86_64.tar.gz"
        sha256 "2fe19877bdccbc5e89fccb727c5baeb74aa7bd8b1d854736a7d939bcd2b57d42"
    else
        url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-linux.gtk.x86.tar.gz"
        sha256 "f1285f4630953514c10923d6e4799cc7eec2e049e57dd8263ce88d10c0d99431"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/dbeaver" => "dbeaverc"})
    end
end
