{
  description = ''Implementation of XML DOM Level 2 Core specification (http://www.w3.org/TR/2000/REC-DOM-Level-2-Core-20001113/core.html)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xmldom-master".dir   = "master";
  inputs."xmldom-master".owner = "nim-nix-pkgs";
  inputs."xmldom-master".ref   = "master";
  inputs."xmldom-master".repo  = "xmldom";
  inputs."xmldom-master".type  = "github";
  inputs."xmldom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmldom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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