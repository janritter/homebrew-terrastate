# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.1/darwin_amd64_terrastate"
      sha256 "38908f004ccad84995019604f5a44dff4b109404a5c357ac01e70406370ee243"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.1/linux_amd64_terrastate"
      sha256 "a08205327b0338bc1c396103016d5d85963137bca88dfba9859dead54e747b4b"
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