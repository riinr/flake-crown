{
  description = ''Max wrapper for omni.'';
  inputs.src-omnimax-0_2_3.flake = false;
  inputs.src-omnimax-0_2_3.type = "github";
  inputs.src-omnimax-0_2_3.owner = "vitreo12";
  inputs.src-omnimax-0_2_3.repo = "omnimax";
  inputs.src-omnimax-0_2_3.ref = "refs/tags/0.2.3";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."omni".type = "github";
  inputs."omni".owner = "riinr";
  inputs."omni".repo = "flake-nimble";
  inputs."omni".ref = "flake-pinning";
  inputs."omni".dir = "nimpkgs/o/omni";

  outputs = { self, nixpkgs, src-omnimax-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnimax-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omnimax-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}