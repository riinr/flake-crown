{
  description = ''Typelists in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-typelists-master.flake = false;
  inputs.src-typelists-master.owner = "yglukhov";
  inputs.src-typelists-master.ref   = "refs/heads/master";
  inputs.src-typelists-master.repo  = "typelists";
  inputs.src-typelists-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-typelists-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-typelists-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}