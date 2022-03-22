{
  description = ''Bindings for the HDF5 data format C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhdf5-v0_2_15.flake = false;
  inputs.src-nimhdf5-v0_2_15.owner = "Vindaar";
  inputs.src-nimhdf5-v0_2_15.ref   = "v0_2_15";
  inputs.src-nimhdf5-v0_2_15.repo  = "nimhdf5";
  inputs.src-nimhdf5-v0_2_15.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_2_15"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhdf5-v0_2_15";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}