class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose."
    homepage "https://www.sublimetext.com"
    version "3200"

    url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
    sha256 "b9d5297c65bd14a8ba3394e74dbd9a5013b3fed5a5a2f8f5120d2cec40614fbd"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_text" => "subl")
    end

    def caveats; <<~EOS
        Executable linked as "subl".
        EOS
    end
end
