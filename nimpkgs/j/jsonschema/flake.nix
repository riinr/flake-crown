{
  description = ''JSON schema validation and creation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsonschema-master".dir   = "master";
  inputs."jsonschema-master".owner = "nim-nix-pkgs";
  inputs."jsonschema-master".ref   = "master";
  inputs."jsonschema-master".repo  = "jsonschema";
  inputs."jsonschema-master".type  = "github";
  inputs."jsonschema-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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