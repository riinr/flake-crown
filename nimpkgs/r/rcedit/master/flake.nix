{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rcedit-master.flake = false;
  inputs.src-rcedit-master.ref   = "refs/heads/master";
  inputs.src-rcedit-master.owner = "bung87";
  inputs.src-rcedit-master.repo  = "rcedit";
  inputs.src-rcedit-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rcedit-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rcedit-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}