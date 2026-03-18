class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.14.0/ipm-osx-arm64-full.zip"
      sha256 "8ac3fc6b941f885ac6557ac36ce7a529afcf4299f6570a405f40ee0f105f21e0"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.14.0/ipm-osx-x64-full.zip"
      sha256 "9cb3dd49e5654a76151a91698ab5146f4e2b8298b6a46d7cce9c7cf481bdfde9"
    end
  
    def install
      if Hardware::CPU.arm?
        ohai "Detected ARM architecture"
      else
        ohai "Detected Intel architecture"
      end
      ohai "Starting installation of IPM package"
      bin.install "ipm"
      ohai "IPM package installed successfully"
    end
  
  end
