class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install from generic tarball."
    homepage "https://www.sublimetext.com/"
    version "3126"

    if MacOS.prefer_64_bit?
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
        sha256 "18db132e9a305fa3129014b608628e06f9442f48d09cfe933b3b1a84dd18727a"
    else
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
        sha256 "92ffefa470f0777897ed0dfb7c1635426105271da9b5affbe8c1e82039718e29"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_text" => "subl")
    end
end
