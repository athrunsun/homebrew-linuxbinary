class BaiduPcsGo < Formula
    desc "Baidu Personal-Cloud-Storage CLI client."
    homepage "https://github.com/iikira/BaiduPCS-Go"
    version "3.5.4"

    if MacOS.prefer_64_bit?
        url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-linux-amd64.zip"
        sha256 "5d6a9090ed00b08ad5c5407108a66996ac5c183a41af4c23aceab8c6c2679dda"
    else
        url "https://github.com/iikira/BaiduPCS-Go/releases/download/v#{version}/BaiduPCS-Go-v#{version}-linux-386.zip"
        sha256 "5b085372ceffa1b43cb963aea399e42b679801dc222d542b17b35667b0bd4c03"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/BaiduPCS-Go" => "bdpcs")
    end

    def caveats; <<~EOS
        Executable is linked as "bdpcs".
        EOS
    end
end
