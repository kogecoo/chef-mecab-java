require 'spec_helper'

# FIXME: serverspec cannot touch attribute values in a chef cookbook.
mecab_sdk = "/usr/local/bin/mecab-java-0.996"
workdir = "/tmp/serverspec-mecab-java"
classname = "Check"

check_mecab_version_cmd = <<-EOD
mkdir -p #{workdir};
cd #{workdir};
echo '
import org.chasen.mecab.Model;

public class #{classname} {
  public static void main(String[] args){
    System.out.println(Model.version());
  }
}
' > #{classname}.java;
javac #{classname}.java -I#{mecab_sdk};
java #{classname}
EOD

describe command(check_mecab_version_cmd) do
  its(:stdout) { should match (/\d\.\d{3}/) }
end
