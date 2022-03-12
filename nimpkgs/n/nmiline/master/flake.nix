{
  description = ''Plotting tool using NiGui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nmiline-master.flake = false;
  inputs.src-nmiline-master.owner = "mzteruru52";
  inputs.src-nmiline-master.ref   = "refs/heads/master";
  inputs.src-nmiline-master.repo  = "NmiLine";
  inputs.src-nmiline-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nmiline-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nmiline-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}