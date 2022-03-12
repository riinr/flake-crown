{
  description = ''A port of mdbook to nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimibook-main".url = "path:./main";
  inputs."nimibook-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimibook-v0_2_0".url = "path:./v0_2_0";
  inputs."nimibook-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimibook-v0_2_1".url = "path:./v0_2_1";
  inputs."nimibook-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}