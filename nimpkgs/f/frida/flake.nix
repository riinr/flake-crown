{
  description = ''Frida wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."frida-master".dir   = "master";
  inputs."frida-master".owner = "nim-nix-pkgs";
  inputs."frida-master".ref   = "master";
  inputs."frida-master".repo  = "frida";
  inputs."frida-master".type  = "github";
  inputs."frida-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."frida-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."frida-0_1_0".dir   = "0_1_0";
  inputs."frida-0_1_0".owner = "nim-nix-pkgs";
  inputs."frida-0_1_0".ref   = "master";
  inputs."frida-0_1_0".repo  = "frida";
  inputs."frida-0_1_0".type  = "github";
  inputs."frida-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."frida-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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