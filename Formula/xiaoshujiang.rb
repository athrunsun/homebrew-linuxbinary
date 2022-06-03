class Xiaoshujiang < Formula
    desc "小书匠 - cross-platform markdown writer."
    homepage "http://xiaoshujiang.com"
    version "6.7.0"

    url "https://github.com/suziwen/markdownxiaoshujiang/releases/download/v#{version}/Story-writer-linux64.zip"
    sha256 "c11d3ba60b66948954864131ab73ae1d859635ed0a6a055ddf3c788dd440c35e"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Story-writer" => "xsj")
    end

    def caveats; <<~EOS
        Executable is linked as "xsj".
        EOS
    end
end
