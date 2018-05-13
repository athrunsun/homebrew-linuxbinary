class Postman < Formula
    desc "Postman helps you develop APIs faster."
    homepage "https://www.getpostman.com/"
    version "6.0.10"

    if MacOS.prefer_64_bit?
        url "https://dl.pstmn.io/download/version/#{version}/linux64"
        sha256 "82e6debb7bcb436679243581add5cc85cc7c96846c19c76d07a5416e16845a48"
    else
        url "https://dl.pstmn.io/download/version/#{version}/linux32"
        sha256 "480a699fa2ec8f9d034997ee87e1dccd409fb07388374b253d29cb29f539e523"
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
