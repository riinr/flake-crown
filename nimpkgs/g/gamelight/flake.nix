{
  description = ''A set of simple modules for writing a JavaScript 2D game.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gamelight-master".dir   = "master";
  inputs."gamelight-master".owner = "nim-nix-pkgs";
  inputs."gamelight-master".ref   = "master";
  inputs."gamelight-master".repo  = "gamelight";
  inputs."gamelight-master".type  = "github";
  inputs."gamelight-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gamelight-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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