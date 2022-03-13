{
  description = ''Wrapper for VMProtect SDK'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vmprotect-master".dir   = "master";
  inputs."vmprotect-master".owner = "nim-nix-pkgs";
  inputs."vmprotect-master".ref   = "master";
  inputs."vmprotect-master".repo  = "vmprotect";
  inputs."vmprotect-master".type  = "github";
  inputs."vmprotect-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmprotect-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmprotect-0_1_0".dir   = "0_1_0";
  inputs."vmprotect-0_1_0".owner = "nim-nix-pkgs";
  inputs."vmprotect-0_1_0".ref   = "master";
  inputs."vmprotect-0_1_0".repo  = "vmprotect";
  inputs."vmprotect-0_1_0".type  = "github";
  inputs."vmprotect-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmprotect-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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