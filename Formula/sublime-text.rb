class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install from tarball for generic linux platform."
    homepage "https://www.sublimetext.com/"
    version "3143"

    if MacOS.prefer_64_bit?
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
        sha256 "9ce120c4f28b239d3b3860ee672d9d87e1397a4c08ee6c4e62fd6e261a296519"
    else
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
        sha256 "b1ecc4b70d66b9236b876f1913c4094b6dd51436e45c74883ba70a1939e9f735"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_text" => "subl")
    end
end
