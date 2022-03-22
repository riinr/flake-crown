{
  description = ''libshout wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nshout-master.flake = false;
  inputs.src-nshout-master.ref   = "refs/heads/master";
  inputs.src-nshout-master.owner = "Senketsu";
  inputs.src-nshout-master.repo  = "nshout";
  inputs.src-nshout-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nshout-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nshout-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}