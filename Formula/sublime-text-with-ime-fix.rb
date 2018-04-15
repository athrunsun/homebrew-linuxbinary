class SublimeTextWithImeFix < Formula
    desc "Sublime Text with IME (input method) fix, so that we can input with Fcitx."
    homepage "https://www.sublimetext.com/"
    version "3143"

    url "https://github.com/lyfeyaj/sublime-text-imfix/raw/master/lib/libsublime-imfix.so"
    sha256 "db44ddff21d8b2493576368ae01eba93624767fbcf5f062311383bb07bbaa176"

    depends_on "sublime-text"
    
    def install
        (libexec/"lib").install "libsublime-imfix.so"

        (bin/"subli").write <<~EOS
            #!/bin/sh
            export LD_PRELOAD=#{libexec}/lib/libsublime-imfix.so
            exec $(brew --prefix sublime-text)/bin/subl "$@"
        EOS
    end

    def caveats; <<~EOS
        Executable is linked as "subli", which is a customized shell script,
        with libsublime-imfix.so loaded as LD_PRELOAD.
        EOS
    end
end
