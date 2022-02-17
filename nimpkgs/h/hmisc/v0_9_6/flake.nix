{
  description = ''Collection of helper utilities'';
  inputs.src-hmisc-v0_9_6.flake = false;
  inputs.src-hmisc-v0_9_6.type = "github";
  inputs.src-hmisc-v0_9_6.owner = "haxscramper";
  inputs.src-hmisc-v0_9_6.repo = "hmisc";
  inputs.src-hmisc-v0_9_6.ref = "refs/tags/v0.9.6";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-hmisc-v0_9_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmisc-v0_9_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hmisc-v0_9_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}