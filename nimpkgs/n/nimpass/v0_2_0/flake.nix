{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v0_2_0.flake = false;
  inputs.src-nimpass-v0_2_0.type = "github";
  inputs.src-nimpass-v0_2_0.owner = "xioren";
  inputs.src-nimpass-v0_2_0.repo = "NimPass";
  inputs.src-nimpass-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-nimpass-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}