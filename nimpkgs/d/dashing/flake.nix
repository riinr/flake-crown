{
  description = ''Terminal dashboards.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dashing-master".url = "path:./master";
  inputs."dashing-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dashing-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dashing-0_1_1".url = "path:./0_1_1";
  inputs."dashing-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dashing-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}