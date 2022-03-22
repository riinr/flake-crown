{
  description = ''New atomics, thread primitives, channels and atomic refcounting for --gc:arc/orc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-threading-master.flake = false;
  inputs.src-threading-master.ref   = "refs/heads/master";
  inputs.src-threading-master.owner = "nim-lang";
  inputs.src-threading-master.repo  = "threading";
  inputs.src-threading-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-threading-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-threading-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}