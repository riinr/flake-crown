{
  description = ''Accurate Floating Point Sums and Products'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-AccurateSums-master.flake = false;
  inputs.src-AccurateSums-master.owner = "lbartoletti";
  inputs.src-AccurateSums-master.ref   = "master";
  inputs.src-AccurateSums-master.repo  = "accuratesums";
  inputs.src-AccurateSums-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-AccurateSums-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-AccurateSums-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}