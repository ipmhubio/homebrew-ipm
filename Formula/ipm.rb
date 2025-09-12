class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.12.0/ipm-osx-arm64-full.zip"
      sha256 "a9cf22bb50e8a6692cf1a67dda5efb11441ed82d7b9660b4daba4fe8dfbb73f2"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.12.0/ipm-osx-x64-full.zip"
      sha256 "888aee3d7be5f8136fcac9e6f8a6ba9e99a37bfe3a28a639f8d24960b503dd64"
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
