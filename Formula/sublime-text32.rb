class SublimeText32 < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install generic tarball."
    homepage "https://www.sublimetext.com/"
    version "3103"
    url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
    sha256 "34380ea97e0363fee908ea780754f8a7670a0054f8d6ef72ba1efa663fb32de2"

    bottle :unneeded

    def install
        prefix.install Dir["*"]
        bin.install_symlink({"#{prefix}/sublime_text" => "subl32"})
    end
end