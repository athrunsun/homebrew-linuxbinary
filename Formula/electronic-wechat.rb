class ElectronicWechat < Formula
    desc "The Most Intelligent Java IDE, community editionA better WeChat on macOS and Linux. Built with Electron by Zhongyi Tong."
    homepage "https://github.com/geeeeeeeeek/electronic-wechat"
    version "1.4.0"
    url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/v1.4.0/linux-x64.tar.gz"
    sha256 "5f34e478db1153ea8aba8816f8aec59b3a1b5256951fbe26bfd476412dcea5cf"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/electronic-wechat" => "ewechat"})
    end
end
