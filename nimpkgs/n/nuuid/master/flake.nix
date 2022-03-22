{
  description = ''A Nim source only UUID generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nuuid-master.flake = false;
  inputs.src-nuuid-master.ref   = "refs/heads/master";
  inputs.src-nuuid-master.owner = "yglukhov";
  inputs.src-nuuid-master.repo  = "nim-only-uuid";
  inputs.src-nuuid-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nuuid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nuuid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}