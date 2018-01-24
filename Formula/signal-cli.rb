class SignalCli < Formula
  desc 'signal-cli (formerly textsecure-cli) provides a commandline and dbus interface for WhisperSystems/libsignal-service-java'
    homepage "https://github.com/AsamK/signal-cli"
    version "0.5.6"


    url "https://github.com/AsamK/signal-cli/releases/download/v#{version}/signal-cli-#{version}.tar.gz"
    sha256 "38008a01328e01056cea5470c2e61a2cacbfe5e98d711a9d4d99f5a0c0c13385"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/signal-cli" => "signal-cli")
    end

    def caveats; <<~EOS
        Executable is linked as "signal-cli".
        For more usage information, see "signal-cli --help".
        EOS
    end
end
