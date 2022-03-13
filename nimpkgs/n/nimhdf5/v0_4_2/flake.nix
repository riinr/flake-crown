{
  description = ''Bindings for the HDF5 data format C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhdf5-v0_4_2.flake = false;
  inputs.src-nimhdf5-v0_4_2.owner = "Vindaar";
  inputs.src-nimhdf5-v0_4_2.ref   = "refs/tags/v0.4.2";
  inputs.src-nimhdf5-v0_4_2.repo  = "nimhdf5";
  inputs.src-nimhdf5-v0_4_2.type  = "github";
  
  inputs."https://github.com/vindaar/seqmath".owner = "nim-nix-pkgs";
  inputs."https://github.com/vindaar/seqmath".ref   = "master";
  inputs."https://github.com/vindaar/seqmath".repo  = "https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhdf5-v0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhdf5-v0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}