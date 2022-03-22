{
  description = ''OpenAL Utility Toolkit (ALUT)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alut-master.flake = false;
  inputs.src-alut-master.owner = "rmt";
  inputs.src-alut-master.ref   = "master";
  inputs.src-alut-master.repo  = "alut";
  inputs.src-alut-master.type  = "github";
  
  inputs."openal".owner = "nim-nix-pkgs";
  inputs."openal".ref   = "master";
  inputs."openal".repo  = "openal";
  inputs."openal".dir   = "0_1_1";
  inputs."openal".type  = "github";
  inputs."openal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alut-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-alut-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}