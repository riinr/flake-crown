{
  description = ''lolcat implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lolcat-master".dir   = "master";
  inputs."lolcat-master".owner = "nim-nix-pkgs";
  inputs."lolcat-master".ref   = "master";
  inputs."lolcat-master".repo  = "lolcat";
  inputs."lolcat-master".type  = "github";
  inputs."lolcat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lolcat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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