{
  description = ''The Nim language server implementation (based on nimsuggest)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlangserver-master".dir   = "master";
  inputs."nimlangserver-master".owner = "nim-nix-pkgs";
  inputs."nimlangserver-master".ref   = "master";
  inputs."nimlangserver-master".repo  = "nimlangserver";
  inputs."nimlangserver-master".type  = "github";
  inputs."nimlangserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlangserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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