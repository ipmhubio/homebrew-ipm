class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.7.0/ipm-osx-arm64-full.zip"
      sha256 "5283b28163b8aad48138c93a1ab10b583285392478ac948fd1ee503cc14bfce9"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.7.0/ipm-osx-x64-full.zip"
      sha256 "19e30ad2a9124595b7dd0c285d175cc09487b461712440c54ba6be8282cbf97e"
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
