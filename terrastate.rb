# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.3/darwin_amd64_terrastate"
      sha256 "b92ad2c17f808d9e6a88385a7e0755d72e7d449c494208aa64bdf5e3fcfb5b18"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.3/linux_amd64_terrastate"
      sha256 "70232d8d04e2a458b94b9fe46442dd104d470d5d57af1d2bacdc25aff05625bf"
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