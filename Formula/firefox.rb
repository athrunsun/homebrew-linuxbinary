class Firefox < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the stable version, in en-US."
    homepage "https://www.mozilla.org/en-US/firefox/all/"
    version "63.0.3"

    url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-x86_64/en-US/firefox-#{version}.tar.bz2"
    sha256 "0273b63e8bd2901fef31971f0e422e943e04ea86f647e175473bfc668e326bbd"

    conflicts_with "firefox-zhcn"

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
