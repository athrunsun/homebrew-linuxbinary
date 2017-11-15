class SmartSynchronize < Formula
    desc "SmartSynchronize is a multi-platform file and directory compare tool."
    homepage "http://www.syntevo.com/smartsynchronize/"
    version "3.4.7"
    url "http://www.syntevo.com/static/smart/download/smartsynchronize/smartsynchronize-generic-3_4_7.tar.gz"
    sha256 "36cf81f55ee6a400b322dfaa7be1510ec497df6512e0f921d79cd5487dbe15e3"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/smartsynchronize.sh" => "smartsynchronize")
    end
end
