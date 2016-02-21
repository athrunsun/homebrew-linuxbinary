class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will be installed from generic tarball."
    homepage "https://www.sublimetext.com/"
    version "3103"

    if MacOS.prefer_64_bit?
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
        sha256 "9d78d34dfc5a74339476d02313f4c0659afe4dc2ee01998b2e8a1b9def5813f5"
    else
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
        sha256 "34380ea97e0363fee908ea780754f8a7670a0054f8d6ef72ba1efa663fb32de2"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/sublime_text" => "subl"})
    end
end