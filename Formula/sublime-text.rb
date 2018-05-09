class SublimeText < Formula
    desc "Sublime Text is a sophisticated text editor for code, markup and prose. This formula will install from tarball for generic linux platform."
    homepage "https://www.sublimetext.com/"
    version "3170"

    if MacOS.prefer_64_bit?
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x64.tar.bz2"
        sha256 "fdcfc110626e89c5c40a6c38b700a40f8d608c2cdd1cd4fef63263004096dfea"
    else
        url "https://download.sublimetext.com/sublime_text_3_build_#{version}_x32.tar.bz2"
        sha256 "efbb5095995f9acc7df620325d52070fb4fd04a086c66082527b5f8bab489412"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_text" => "subl")
    end
end
