class PgwebBinary < Formula
    desc "Cross-platform client for PostgreSQL databases, binary installation."
    homepage "http://sosedoff.github.io/pgweb"
    version "0.9.1"

    if MacOS.prefer_64_bit?
        url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_amd64.zip"
        sha256 "0f402db6862e8998292fbbabffe36bea4a046c76eb57ea891d89fadd286c3009"
    else
        url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_linux_386.zip"
        sha256 "6bafa26dab6d79e6e5f288306164c6894e3ac86233c11be44da6dcc21f031c1b"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install_symlink({"#{libexec}/pgweb_linux_amd64" => "pgweb"})
        else
            bin.install_symlink({"#{libexec}/pgweb_linux_386" => "pgweb"})
        end
    end
end