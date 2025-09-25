class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.13.0/ipm-osx-arm64-full.zip"
      sha256 "9ae7eff70c6dbd6c66fd5a36748aea1351c95360a886927f9803aced15e01592"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.13.0/ipm-osx-x64-full.zip"
      sha256 "1523e70dc002b9ddb6537d07f00161e026e992cdf2759b24cd3ec81e68438693"
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
