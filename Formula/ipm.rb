class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.8.0/ipm-osx-arm64-full.zip"
      sha256 "435c1bda04023ac6ea86a020deb766e66c2508d9f8ba9640ddc08d0c9bd20fec"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.8.0/ipm-osx-x64-full.zip"
      sha256 "a4f5107de7c6125f45e2e4275e114bf90db3cdc615ba2f1bfc2b516fbeac42fe"
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
