class PgwebBinary < Formula
    desc "Cross-platform client for PostgreSQL databases, binary installation."
    homepage "https://sosedoff.github.io/pgweb"
    version "0.9.6"

    if MacOS.prefer_64_bit?
        url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_amd64.zip"
        sha256 "550fb4bc628b51891a5fd5cfd48221999154343d0c2a9a4182b4151ff8464fe6"
    else
        url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_386.zip"
        sha256 "a5353a1af12f32509184a471cedbdbe872dd6f1ce9ca617df5a9623f268ea1f2"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install_symlink("#{libexec}/pgweb_linux_amd64" => "pgweb")
        else
            bin.install_symlink("#{libexec}/pgweb_linux_386" => "pgweb")
        end
    end
end
