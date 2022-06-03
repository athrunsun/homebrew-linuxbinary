class FirefoxZhcn < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the stable version, in zh-CN (Chinese (Simplified), i.e. 中文 (简体))."
    homepage "https://www.mozilla.org/zh-CN/firefox/all/"
    version "57.0.1"

    url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-x86_64/zh-CN/firefox-#{version}.tar.bz2"
    sha256 "c29fcb214607726d9d8958927f2840d9407ce18d457b0358ddca756a00679988"

    conflicts_with "firefox"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser")
    end

    def caveats; <<~EOS
        Executable is linked as "firefox-browser".
        For more usage information, see "firefox-browser --help".
        EOS
    end
end
