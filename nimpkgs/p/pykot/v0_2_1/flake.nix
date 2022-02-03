{
  description = ''Porting some Python / Kotlin features to Nim'';
  inputs.src-pykot-v0_2_1.flake = false;
  inputs.src-pykot-v0_2_1.type = "github";
  inputs.src-pykot-v0_2_1.owner = "jabbalaci";
  inputs.src-pykot-v0_2_1.repo = "nimpykot";
  inputs.src-pykot-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-pykot-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pykot-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pykot-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}