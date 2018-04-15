class SublimeTextWithImeFix < Formula
    desc "Sublime Text with IME (input method) fix, so that we can input with Fcitx."
    homepage "https://www.sublimetext.com/"
    version "3143"

    url "https://github.com/lyfeyaj/sublime-text-imfix/raw/master/lib/libsublime-imfix.so"
    sha256 "db44ddff21d8b2493576368ae01eba93624767fbcf5f062311383bb07bbaa176"

    #conflicts_with "sublime-text", :because => "sublime-text also ships a subl binary"
    depends_on "sublime-text"

    # if MacOS.prefer_64_bit?
    #     url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
    #     sha256 "9ce120c4f28b239d3b3860ee672d9d87e1397a4c08ee6c4e62fd6e261a296519"
    # else
    #     url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
    #     sha256 "b1ecc4b70d66b9236b876f1913c4094b6dd51436e45c74883ba70a1939e9f735"
    # end
    
    # resource "sublime-text-ime-fix" do
    #     url "https://github.com/lyfeyaj/sublime-text-imfix/raw/master/lib/libsublime-imfix.so"
    #     sha256 "db44ddff21d8b2493576368ae01eba93624767fbcf5f062311383bb07bbaa176"
    # end
    
    def install
        #libexec.install Dir["*"]
        (libexec/"lib").install "libsublime-imfix.so"
        
        # resource("sublime-text-ime-fix").stage do
        #     (libexec/"lib").install "libsublime-imfix.so"
        # end

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
