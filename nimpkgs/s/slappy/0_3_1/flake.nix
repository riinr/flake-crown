{
  description = ''A 3d sound API for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slappy-0_3_1.flake = false;
  inputs.src-slappy-0_3_1.owner = "treeform";
  inputs.src-slappy-0_3_1.ref   = "refs/tags/0.3.1";
  inputs.src-slappy-0_3_1.repo  = "slappy";
  inputs.src-slappy-0_3_1.type  = "github";
  
  inputs."openal".owner = "nim-nix-pkgs";
  inputs."openal".ref   = "master";
  inputs."openal".repo  = "openal";
  inputs."openal".type  = "github";
  inputs."openal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy".owner = "nim-nix-pkgs";
  inputs."supersnappy".ref   = "master";
  inputs."supersnappy".repo  = "supersnappy";
  inputs."supersnappy".type  = "github";
  inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slappy-0_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slappy-0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}