{
  description = ''Nim lang smart pointers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nptr-v0_1_5.flake = false;
  inputs.src-nptr-v0_1_5.owner = "henryas";
  inputs.src-nptr-v0_1_5.ref   = "v0_1_5";
  inputs.src-nptr-v0_1_5.repo  = "nptr";
  inputs.src-nptr-v0_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nptr-v0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nptr-v0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}