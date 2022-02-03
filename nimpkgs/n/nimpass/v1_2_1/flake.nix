{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v1_2_1.flake = false;
  inputs.src-nimpass-v1_2_1.type = "github";
  inputs.src-nimpass-v1_2_1.owner = "xioren";
  inputs.src-nimpass-v1_2_1.repo = "NimPass";
  inputs.src-nimpass-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, src-nimpass-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}