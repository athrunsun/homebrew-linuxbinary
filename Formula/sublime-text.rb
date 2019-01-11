class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install from tarball for generic linux platform."
    homepage "https://www.sublimetext.com/"
    version "3176"

    url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
    sha256 "74f17c1aec4ddec9d4d4c39f5aec0414a4755d407a05efa571e8892e0b9cf732"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_text" => "subl")
    end
end
