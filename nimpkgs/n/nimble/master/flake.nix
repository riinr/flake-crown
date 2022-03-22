{
  description = ''Nim package manager.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimble-master.flake = false;
  inputs.src-nimble-master.owner = "nim-lang";
  inputs.src-nimble-master.ref   = "master";
  inputs.src-nimble-master.repo  = "nimble";
  inputs.src-nimble-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimble-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}