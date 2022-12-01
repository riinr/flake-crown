{
  description = ''A wrapper for C++'s std::any'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cppany-main".dir   = "main";
  inputs."cppany-main".owner = "nim-nix-pkgs";
  inputs."cppany-main".ref   = "master";
  inputs."cppany-main".repo  = "cppany";
  inputs."cppany-main".type  = "github";
  inputs."cppany-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppany-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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