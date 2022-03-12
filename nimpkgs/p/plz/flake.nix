{
  description = ''PLZ Python PIP alternative'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plz-master".url = "path:./master";
  inputs."plz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plz-0_0_1".url = "path:./0_0_1";
  inputs."plz-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plz-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plz-init".url = "path:./init";
  inputs."plz-init".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plz-init".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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