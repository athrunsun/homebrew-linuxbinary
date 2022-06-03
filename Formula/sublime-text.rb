class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose."
    homepage "https://www.sublimetext.com"
    version "3207"

    url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
    sha256 "acb64f1de024a0f004888096afa101051e48d96c7a3e7fe96e11312d524938c4"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_text" => "subl")
    end

    def caveats; <<~EOS
        Executable linked as "subl".
        EOS
    end
end
