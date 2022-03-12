{
  description = ''Disk-based sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spills-master.flake = false;
  inputs.src-spills-master.owner = "andreaferretti";
  inputs.src-spills-master.ref   = "refs/heads/master";
  inputs.src-spills-master.repo  = "spills";
  inputs.src-spills-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spills-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spills-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}