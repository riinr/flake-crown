{
  description = ''A 3d sound API for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slappy-master.flake = false;
  inputs.src-slappy-master.owner = "treeform";
  inputs.src-slappy-master.ref   = "refs/heads/master";
  inputs.src-slappy-master.repo  = "slappy";
  inputs.src-slappy-master.type  = "github";
  
  inputs."openal".dir   = "nimpkgs/o/openal";
  inputs."openal".owner = "riinr";
  inputs."openal".ref   = "flake-pinning";
  inputs."openal".repo  = "flake-nimble";
  inputs."openal".type  = "github";
  inputs."openal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy".dir   = "nimpkgs/s/supersnappy";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".ref   = "flake-pinning";
  inputs."supersnappy".repo  = "flake-nimble";
  inputs."supersnappy".type  = "github";
  inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slappy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slappy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}