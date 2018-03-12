class ElectronicQq < Formula
    desc 'The electionic-QQ based on smart-qq & electronic-wechat written in Nodejs'
    homepage "https://github.com/arthurkiller/electronic-QQ"
    version "0.0.2"
    url "https://github.com/arthurkiller/electronic-QQ/releases/download/v#{version}/electronic-QQ-linux-x64.tar.gz"
    sha256 "400a9d92af29222f614c1313dbafa0325b9c011a4eb97ea09b3ccbe3903559ac"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/electronic-QQ" => "eqq")
    end

    def caveats; <<~EOS
        Executable is linked as "eqq".
        EOS
    end
end

