{
  description = ''libcoap C library wrapped in Nim with full async integration'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."coap-master".dir   = "master";
  inputs."coap-master".owner = "nim-nix-pkgs";
  inputs."coap-master".ref   = "master";
  inputs."coap-master".repo  = "coap";
  inputs."coap-master".type  = "github";
  inputs."coap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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