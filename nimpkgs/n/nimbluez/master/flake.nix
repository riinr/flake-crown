{
  description = ''Nim modules for access to system Bluetooth resources.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbluez-master.flake = false;
  inputs.src-nimbluez-master.owner = "Electric-Blue";
  inputs.src-nimbluez-master.ref   = "master";
  inputs.src-nimbluez-master.repo  = "NimBluez.git";
  inputs.src-nimbluez-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbluez-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimbluez-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}