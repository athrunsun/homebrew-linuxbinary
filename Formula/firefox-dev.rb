class FirefoxDev < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the developer version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/developer/all/"
    version "57.0"
    
    if MacOS.prefer_64_bit?
        url "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
        sha256 "9d97ec8eda07d75a48497f5d27b87b000af59b51d7468d49a3b5f0f8a63be172"
    else
        url "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux&lang=en-US"
        sha256 "ddf8d92066335f81c42d6f730c52d9e6b16ff7c35fea194dd04a87103a5dd9a6"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser-dev")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "firefox-browser-dev".
        For more usage information, see "firefox-browser-dev --help".
        EOS
    end
end
