{
  description = ''Java bridge for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jnim-v0_2_5.flake = false;
  inputs.src-jnim-v0_2_5.owner = "yglukhov";
  inputs.src-jnim-v0_2_5.ref   = "v0_2_5";
  inputs.src-jnim-v0_2_5.repo  = "jnim";
  inputs.src-jnim-v0_2_5.type  = "github";
  
  inputs."nimfp".owner = "nim-nix-pkgs";
  inputs."nimfp".ref   = "master";
  inputs."nimfp".repo  = "nimfp";
  inputs."nimfp".dir   = "v0_4_4";
  inputs."nimfp".type  = "github";
  inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jnim-v0_2_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jnim-v0_2_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}