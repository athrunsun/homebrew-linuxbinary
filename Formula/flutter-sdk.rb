class FlutterSdk < Formula
    desc "build beautiful native apps on iOS and Android from a single codebase."
    homepage "https://flutter.dev"
    version "1.2.1"

    option "with-cn-mirror", "Download from https://storage.flutter-io.cn, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "cn-mirror"
        url "https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v#{version}-stable.tar.xz"
    else
        url "https://storage.flutter-io.cn/flutter_infra/releases/stable/linux/flutter_linux_v#{version}-stable.tar.xz"
    end
    
    sha256 "e5f9e8a641854a2b598083fd9d733d56bc9b77346b79777c19127992cbf6be51"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/flutter" => "flutter")
    end

    def caveats; <<~EOS
        Executable is linked as "flutter".
        EOS
    end
end
