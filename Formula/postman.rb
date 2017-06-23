class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com/"
    version "4.9.1"

    if MacOS.prefer_64_bit?
        url "https://dl.pstmn.io/download/version/#{version}/linux64"
        sha256 "f6c2ca7db3c30393b46f7b614b10e904e3951c5e354b317b9dba33ece51aa96e"
    else
        url "https://dl.pstmn.io/download/version/#{version}/linux32"
        sha256 "b7c3dcf44f0a0727084af1dc0b8e69677fd078e7dd0b95af5386d2e53f9d6dd6"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Postman" => "postman")
    end
end
