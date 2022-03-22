{
  description = ''De/serialization library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deser-master.flake = false;
  inputs.src-deser-master.ref   = "refs/heads/master";
  inputs.src-deser-master.owner = "gabbhack";
  inputs.src-deser-master.repo  = "deser";
  inputs.src-deser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deser-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-deser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}