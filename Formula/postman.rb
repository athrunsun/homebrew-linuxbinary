class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com/"
    version "6.3.0"

    if MacOS.prefer_64_bit?
        url "https://dl.pstmn.io/download/version/#{version}/linux64"
        sha256 "ca197df4deb65b45586039c22f95d6292d643cac48307a4c41879c937c08a526"
    else
        url "https://dl.pstmn.io/download/version/#{version}/linux32"
        sha256 "75e0a017cd82f864fdaed3d7a10ed72c903cf9723ee739c7fb5706baa17b500e"
    end

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
