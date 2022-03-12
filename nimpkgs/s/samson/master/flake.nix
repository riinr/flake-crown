{
  description = ''Implementation of JSON5.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-samson-master.flake = false;
  inputs.src-samson-master.owner = "GULPF";
  inputs.src-samson-master.ref   = "refs/heads/master";
  inputs.src-samson-master.repo  = "samson";
  inputs.src-samson-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-samson-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-samson-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}