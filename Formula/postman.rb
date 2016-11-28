class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com/"
    version "4.8.3"

    if MacOS.prefer_64_bit?
        url "https://dl.pstmn.io/download/latest/linux?arch=64"
        sha256 "2661ff3edd0fb9cfaa00b952ac0640ac29b9c850260bb0f5ec000871446d554c"
    else
        url "https://dl.pstmn.io/download/latest/linux?arch=32"
        sha256 "19271ede9fa1d4ec675df51e62f518336bc29be33ca9a35c6ed81b37e0f91f97"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Postman" => "postman"})
    end
end
