{
  description = ''Nim - Java bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jnim-v0_3_2.flake = false;
  inputs.src-jnim-v0_3_2.owner = "yglukhov";
  inputs.src-jnim-v0_3_2.ref   = "refs/tags/v0.3.2";
  inputs.src-jnim-v0_3_2.repo  = "jnim";
  inputs.src-jnim-v0_3_2.type  = "github";
  
  inputs."nimfp".owner = "nim-nix-pkgs";
  inputs."nimfp".ref   = "master";
  inputs."nimfp".repo  = "nimfp";
  inputs."nimfp".type  = "github";
  inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jnim-v0_3_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jnim-v0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}