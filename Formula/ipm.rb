class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.11.0/ipm-osx-arm64-full.zip"
      sha256 "4f36b7d1689bebb6342dfd9eba7f6bbece04dd2323f50af5ff81643751a02508"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.11.0/ipm-osx-x64-full.zip"
      sha256 "e0d8e841d2a4a884be390da21afa06b3f3ae80ad92bdb38adbee25f2273a6481"
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
