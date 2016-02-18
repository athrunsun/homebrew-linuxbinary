class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install generic tarball."
    homepage "https://www.sublimetext.com/"
    version "3103"
    url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
    sha256 "9d78d34dfc5a74339476d02313f4c0659afe4dc2ee01998b2e8a1b9def5813f5"

    bottle :unneeded

    def install
        prefix.install Dir["*"]
        bin.install_symlink({"#{prefix}/sublime_text" => "subl"})
    end
end