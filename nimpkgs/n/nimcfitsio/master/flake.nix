{
  description = ''Bindings for CFITSIO, a library to read/write FITSIO images and tables.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcfitsio-master.flake = false;
  inputs.src-nimcfitsio-master.owner = "ziotom78";
  inputs.src-nimcfitsio-master.ref   = "refs/heads/master";
  inputs.src-nimcfitsio-master.repo  = "nimcfitsio";
  inputs.src-nimcfitsio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcfitsio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcfitsio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}