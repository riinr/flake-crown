{
  description = ''Plotting tool using NiGui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nmiline-v1_1.flake = false;
  inputs.src-nmiline-v1_1.owner = "mzteruru52";
  inputs.src-nmiline-v1_1.ref   = "refs/tags/v1.1";
  inputs.src-nmiline-v1_1.repo  = "NmiLine";
  inputs.src-nmiline-v1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nmiline-v1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nmiline-v1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}