{
  description = ''Parses an XML Document into a XML DOM Document representation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xmldomparser-master".dir   = "master";
  inputs."xmldomparser-master".owner = "nim-nix-pkgs";
  inputs."xmldomparser-master".ref   = "master";
  inputs."xmldomparser-master".repo  = "xmldomparser";
  inputs."xmldomparser-master".type  = "github";
  inputs."xmldomparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmldomparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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