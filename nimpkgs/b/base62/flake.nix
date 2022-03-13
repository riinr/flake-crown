{
  description = ''Arbitrary base encoding-decoding functions, defaulting to Base-62.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."base62-master".dir   = "master";
  inputs."base62-master".owner = "nim-nix-pkgs";
  inputs."base62-master".ref   = "master";
  inputs."base62-master".repo  = "base62";
  inputs."base62-master".type  = "github";
  inputs."base62-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base62-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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