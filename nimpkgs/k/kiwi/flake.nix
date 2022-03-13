{
  description = ''Cassowary constraint solving'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kiwi-master".dir   = "master";
  inputs."kiwi-master".owner = "nim-nix-pkgs";
  inputs."kiwi-master".ref   = "master";
  inputs."kiwi-master".repo  = "kiwi";
  inputs."kiwi-master".type  = "github";
  inputs."kiwi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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