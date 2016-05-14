class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install from generic tarball."
    homepage "https://www.sublimetext.com/"
    version "3114"

    if MacOS.prefer_64_bit?
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
        sha256 "c6409bfc0841a02dfa3ba194015c7c87ea41ade9d61407d421ca947fe713b15a"
    else
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
        sha256 "0d78a377c2d55c336c95de1b62cc713861c467e83f6d6844a7b0701acde92e77"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/sublime_text" => "subl"})
    end
end