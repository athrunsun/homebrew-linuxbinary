class VisualvmMultipleLanguage < Formula
    desc "VisualVM is an All-in-One Java Troubleshooting Tool, multiple language version."
    homepage "https://visualvm.github.io/"
    version "1.3.9"

    url "https://github.com/oracle/visualvm/releases/download/#{version}/visualvm_139-ml.zip"
    sha256 "5a757f3c7fe119ff9449d098e02fad9611564587495e24f4b36b9f6b4055e4fe"

    conflicts_with "visualvm"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/visualvm")
    end
end
