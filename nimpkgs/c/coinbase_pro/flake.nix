{
  description = ''Coinbase pro client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."coinbase_pro-master".dir   = "master";
  inputs."coinbase_pro-master".owner = "nim-nix-pkgs";
  inputs."coinbase_pro-master".ref   = "master";
  inputs."coinbase_pro-master".repo  = "coinbase_pro";
  inputs."coinbase_pro-master".type  = "github";
  inputs."coinbase_pro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coinbase_pro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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