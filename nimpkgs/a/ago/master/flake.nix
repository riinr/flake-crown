{
  description = ''Time ago in words in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ago-master.flake = false;
  inputs.src-ago-master.ref   = "refs/heads/master";
  inputs.src-ago-master.owner = "daehee";
  inputs.src-ago-master.repo  = "ago";
  inputs.src-ago-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ago-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ago-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}