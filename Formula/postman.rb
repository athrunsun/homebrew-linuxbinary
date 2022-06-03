class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com"
    version "8.10.0"

    url "https://dl.pstmn.io/download/version/#{version}/linux64"
    sha256 "05f3eaa229483a7e1f698e6e2ea2031d37687de540d4fad05ce677ac216db24d"


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
