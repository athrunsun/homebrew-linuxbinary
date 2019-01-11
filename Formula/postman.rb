class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com/"
    version "6.3.0"

    url "https://dl.pstmn.io/download/version/#{version}/linux64"
    sha256 "ca197df4deb65b45586039c22f95d6292d643cac48307a4c41879c937c08a526"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Postman" => "postman")
    end

    def caveats; <<~EOS
        Executive is linked as "postman".
        Find latest versions in https://www.getpostman.com/apps#changelog
        EOS
    end
end
