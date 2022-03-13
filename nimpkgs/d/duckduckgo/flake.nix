{
  description = ''Duckduckgo search'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."duckduckgo-master".dir   = "master";
  inputs."duckduckgo-master".owner = "nim-nix-pkgs";
  inputs."duckduckgo-master".ref   = "master";
  inputs."duckduckgo-master".repo  = "duckduckgo";
  inputs."duckduckgo-master".type  = "github";
  inputs."duckduckgo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."duckduckgo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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