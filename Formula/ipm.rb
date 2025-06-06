class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.10.0/ipm-osx-arm64-full.zip"
      sha256 "c2d322a2c1e008112df8fae9107c2cbb1a7f200df8026e388816fc7314725e5d"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.10.0/ipm-osx-x64-full.zip"
      sha256 "78e5cf1f1695eee158b8ba77c758923f16cf9c9b3779230ded3f25fde770507f"
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
