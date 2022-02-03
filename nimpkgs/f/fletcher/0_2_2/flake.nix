{
  description = ''Implementation of the Fletcher checksum algorithm.'';
  inputs.src-fletcher-0_2_2.flake = false;
  inputs.src-fletcher-0_2_2.type = "github";
  inputs.src-fletcher-0_2_2.owner = "Akito13";
  inputs.src-fletcher-0_2_2.repo = "nim-fletcher";
  inputs.src-fletcher-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-fletcher-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fletcher-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fletcher-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}