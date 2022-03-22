{
  description = ''Nim barcode library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-barcode-master.flake = false;
  inputs.src-barcode-master.owner = "bunkford";
  inputs.src-barcode-master.ref   = "master";
  inputs.src-barcode-master.repo  = "barcode";
  inputs.src-barcode-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-barcode-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-barcode-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}