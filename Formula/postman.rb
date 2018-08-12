class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com/"
    version "6.2.4"

    if MacOS.prefer_64_bit?
        url "https://dl.pstmn.io/download/version/#{version}/linux64"
        sha256 "79d89b92e8e69d0f7080f3fc25cf30108ba2da0b5587b19851d09dd3c2100c3c"
    else
        url "https://dl.pstmn.io/download/version/#{version}/linux32"
        sha256 "11ad82bf189fdff39c88cfde598870e975c7d04f40096cf78b5c62c7c43e0f02"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Postman" => "postman")
    end

    def caveats; <<~EOS
        Find latest versions in https://www.getpostman.com/apps#changelog
        EOS
    end
end
