{
  description = ''Lightweight audio mixer for games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cmixer-master".dir   = "master";
  inputs."cmixer-master".owner = "nim-nix-pkgs";
  inputs."cmixer-master".ref   = "master";
  inputs."cmixer-master".repo  = "cmixer";
  inputs."cmixer-master".type  = "github";
  inputs."cmixer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmixer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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