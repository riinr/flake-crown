{
  description = ''wrapper for kexpr math expression evaluation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kexpr-master".dir   = "master";
  inputs."kexpr-master".owner = "nim-nix-pkgs";
  inputs."kexpr-master".ref   = "master";
  inputs."kexpr-master".repo  = "kexpr";
  inputs."kexpr-master".type  = "github";
  inputs."kexpr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kexpr-v0_0_2".dir   = "v0_0_2";
  inputs."kexpr-v0_0_2".owner = "nim-nix-pkgs";
  inputs."kexpr-v0_0_2".ref   = "master";
  inputs."kexpr-v0_0_2".repo  = "kexpr";
  inputs."kexpr-v0_0_2".type  = "github";
  inputs."kexpr-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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