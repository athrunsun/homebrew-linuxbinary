class Firefox < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the stable version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/all/"
    version "56.0.1"

    if MacOS.prefer_64_bit?
        url "https://download.mozilla.org/?product=firefox-56.0.1-SSL&os=linux64&lang=en-US"
        sha256 "9adf41f9c8ed525906d270c66ed2cfbd9e2154a3aeccaadbb0bdfb6ce3a3ca73"
    else
        url "https://download.mozilla.org/?product=firefox-56.0.1-SSL&os=linux&lang=en-US"
        sha256 "1bdd432d4faf857553245cfa0ec3fa61eb7ae7b2a981a9fd3f374c586820516d"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "firefox-browser".
        For more usage information, see "firefox-browser --help".
        EOS
    end
end
