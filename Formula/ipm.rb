class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.9.0/ipm-osx-arm64-full.zip"
      sha256 "178d5c6623baf13f04fc98609a36e6f683b6028641d223460a7b5e033b74927d"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.9.0/ipm-osx-x64-full.zip"
      sha256 "48169328c2233406927197088ff258762e2c2dfecdf4a7c60a64386a405ebe72"
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
