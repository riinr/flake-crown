{
  description = ''bearssl pkey decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bearssl_pkey_decoder-master".dir   = "master";
  inputs."bearssl_pkey_decoder-master".owner = "nim-nix-pkgs";
  inputs."bearssl_pkey_decoder-master".ref   = "master";
  inputs."bearssl_pkey_decoder-master".repo  = "bearssl_pkey_decoder";
  inputs."bearssl_pkey_decoder-master".type  = "github";
  inputs."bearssl_pkey_decoder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl_pkey_decoder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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