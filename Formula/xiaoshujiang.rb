class Xiaoshujiang < Formula
    desc "小书匠 - cross-platform markdown writer."
    homepage "http://xiaoshujiang.com"
    version "6.7.0"

    if MacOS.prefer_64_bit?
        url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-linux64.zip"
        sha256 "c11d3ba60b66948954864131ab73ae1d859635ed0a6a055ddf3c788dd440c35e"
    else
        url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-linux32.zip"
        sha256 "0ce0f26efa2c92580bdc7137c042c0950707873dd608c91f8403835c62c1c295"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Story-writer" => "xsj")
    end

    def caveats; <<~EOS
        Executable is linked as "xsj".
        EOS
    end
end
