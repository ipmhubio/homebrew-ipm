class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.12.0/ipm-osx-arm64-full.zip"
      sha256 "d891cb9a4ead1919205de8ee1b6c395403e9e2146a956e5101be48b21c296d95"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.12.0/ipm-osx-x64-full.zip"
      sha256 "42eb6b796e322ce55b2bdf39d75fbef2a127c95fa04a45b179eb584c5bf90392"
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
