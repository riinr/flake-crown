{
  description = ''Bindings for the HDF5 data format C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhdf5-v0_4_3.flake = false;
  inputs.src-nimhdf5-v0_4_3.ref   = "refs/tags/v0.4.3";
  inputs.src-nimhdf5-v0_4_3.owner = "Vindaar";
  inputs.src-nimhdf5-v0_4_3.repo  = "nimhdf5";
  inputs.src-nimhdf5-v0_4_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_4_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimhdf5-v0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}