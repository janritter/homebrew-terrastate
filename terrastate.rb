# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/darwin_amd64_terrastate"
      sha256 "8419343657ba0dfc8bcee01b6e82fc22bfc08d5ce80a4a51be7cb77ecdc9da86"
      version "1.3.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/linux_amd64_terrastate"
      sha256 "0bb45ee6083d9be9b8b7c05c386eba3a3b62026a4ce1753d53008b6abd08e3b3"
      version "1.3.1"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end