{
  description = ''Steam API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-steam-master.flake = false;
  inputs.src-steam-master.ref   = "refs/heads/master";
  inputs.src-steam-master.owner = "juancarlospaco";
  inputs.src-steam-master.repo  = "nim-steam";
  inputs.src-steam-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-steam-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-steam-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}