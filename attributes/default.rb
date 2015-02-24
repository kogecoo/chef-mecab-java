default["dl_site"] = {
  "mecab"  => "http://mecab.googlecode.com/files/",
}

default["mecab-java"] = {
  "version" => "0.996",
  "support" => {
    "0.996" => { "checksum" => "3a8d4e998b40e0058dfadb4259c6bec0bff38b06", "checksum_type" => :SHA1 },
    "0.994" => { "checksum" => "b06ad35374a3e2c7e35eb4537ab742777218af16", "checksum_type" => :SHA1 }
  },
  "sdk_header_path" => "/usr/lib/jvm/java-6-openjdk-amd64/include",
  "install_to" => "/usr/local/bin/"
}
