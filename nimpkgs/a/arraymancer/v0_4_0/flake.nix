{
  description = ''A n-dimensional tensor (ndarray) library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arraymancer-v0_4_0.flake = false;
  inputs.src-arraymancer-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-arraymancer-v0_4_0.owner = "mratsim";
  inputs.src-arraymancer-v0_4_0.repo  = "Arraymancer";
  inputs.src-arraymancer-v0_4_0.type  = "github";
  
  inputs."nimblas".owner = "nim-nix-pkgs";
  inputs."nimblas".ref   = "master";
  inputs."nimblas".repo  = "nimblas";
  inputs."nimblas".dir   = "0_2_2";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack".owner = "nim-nix-pkgs";
  inputs."nimlapack".ref   = "master";
  inputs."nimlapack".repo  = "nimlapack";
  inputs."nimlapack".dir   = "0_2_0";
  inputs."nimlapack".type  = "github";
  inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda".owner = "nim-nix-pkgs";
  inputs."nimcuda".ref   = "master";
  inputs."nimcuda".repo  = "nimcuda";
  inputs."nimcuda".dir   = "0_1_7";
  inputs."nimcuda".type  = "github";
  inputs."nimcuda".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl".owner = "nim-nix-pkgs";
  inputs."nimcl".ref   = "master";
  inputs."nimcl".repo  = "nimcl";
  inputs."nimcl".dir   = "0_1_3";
  inputs."nimcl".type  = "github";
  inputs."nimcl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clblast".owner = "nim-nix-pkgs";
  inputs."clblast".ref   = "master";
  inputs."clblast".repo  = "clblast";
  inputs."clblast".dir   = "";
  inputs."clblast".type  = "github";
  inputs."clblast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clblast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arraymancer-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}