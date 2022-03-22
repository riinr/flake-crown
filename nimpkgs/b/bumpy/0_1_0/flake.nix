{
  description = ''2d collision library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bumpy-0_1_0.flake = false;
  inputs.src-bumpy-0_1_0.owner = "treeform";
  inputs.src-bumpy-0_1_0.ref   = "0_1_0";
  inputs.src-bumpy-0_1_0.repo  = "bumpy";
  inputs.src-bumpy-0_1_0.type  = "github";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".dir   = "1_1_2";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bumpy-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bumpy-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}