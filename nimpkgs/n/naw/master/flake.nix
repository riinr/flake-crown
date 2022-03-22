{
  description = ''A glue wrapper to do awk-style text processing with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-naw-master.flake = false;
  inputs.src-naw-master.owner = "capocasa";
  inputs.src-naw-master.ref   = "master";
  inputs.src-naw-master.repo  = "naw";
  inputs.src-naw-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-naw-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-naw-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}