{
  description = ''Keyboard typing emulator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."autotyper-master".dir   = "master";
  inputs."autotyper-master".owner = "nim-nix-pkgs";
  inputs."autotyper-master".ref   = "master";
  inputs."autotyper-master".repo  = "autotyper";
  inputs."autotyper-master".type  = "github";
  inputs."autotyper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autotyper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."autotyper-v0_2_0".dir   = "v0_2_0";
  inputs."autotyper-v0_2_0".owner = "nim-nix-pkgs";
  inputs."autotyper-v0_2_0".ref   = "master";
  inputs."autotyper-v0_2_0".repo  = "autotyper";
  inputs."autotyper-v0_2_0".type  = "github";
  inputs."autotyper-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autotyper-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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