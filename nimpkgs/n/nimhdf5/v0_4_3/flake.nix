{
  description = ''Bindings for the HDF5 data format C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhdf5-v0_4_3.flake = false;
  inputs.src-nimhdf5-v0_4_3.owner = "Vindaar";
  inputs.src-nimhdf5-v0_4_3.ref   = "refs/tags/v0.4.3";
  inputs.src-nimhdf5-v0_4_3.repo  = "nimhdf5";
  inputs.src-nimhdf5-v0_4_3.type  = "github";
  
  inputs."https://github.com/vindaar/seqmath".dir   = "nimpkgs/h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".ref   = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".repo  = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhdf5-v0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}