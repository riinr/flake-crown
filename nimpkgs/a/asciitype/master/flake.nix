{
  description = ''This module performs character tests.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asciitype-master.flake = false;
  inputs.src-asciitype-master.ref   = "refs/heads/master";
  inputs.src-asciitype-master.owner = "chocobo333";
  inputs.src-asciitype-master.repo  = "asciitype";
  inputs.src-asciitype-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asciitype-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asciitype-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}