class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com"
    version "6.7.3"

    url "https://dl.pstmn.io/download/version/#{version}/linux64"
    sha256 "cf413136c5de4a3864fc110404dad5ae65306f618ae01ed3f6c88b79c56aee11"

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
