{
  description = ''ISAAC PRNG implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-isaac-master.flake = false;
  inputs.src-isaac-master.ref   = "refs/heads/master";
  inputs.src-isaac-master.owner = "pragmagic";
  inputs.src-isaac-master.repo  = "isaac";
  inputs.src-isaac-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-isaac-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-isaac-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}