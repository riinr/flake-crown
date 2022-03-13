{
  description = ''Determine if a useragent can access a URL using robots.txt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."robotparser-master".dir   = "master";
  inputs."robotparser-master".owner = "nim-nix-pkgs";
  inputs."robotparser-master".ref   = "master";
  inputs."robotparser-master".repo  = "robotparser";
  inputs."robotparser-master".type  = "github";
  inputs."robotparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."robotparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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