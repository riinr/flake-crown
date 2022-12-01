{
  description = ''A wrapper for C++'s std::tuple'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cpptuples-main".dir   = "main";
  inputs."cpptuples-main".owner = "nim-nix-pkgs";
  inputs."cpptuples-main".ref   = "master";
  inputs."cpptuples-main".repo  = "cpptuples";
  inputs."cpptuples-main".type  = "github";
  inputs."cpptuples-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cpptuples-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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