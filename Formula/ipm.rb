class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.6.0/ipm-osx-arm64-full.zip"
      sha256 "20cc2bef4366d014567c9c7aa4fda12eb1b888ffff88fcd172b6c02621aa2a5e"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.6.0/ipm-osx-x64-full.zip"
      sha256 "86faa86158bfdf7c0100226c553ac3d8bd070a43a3e33fc0beb0959383d5f9ce"
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
