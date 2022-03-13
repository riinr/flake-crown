{
  description = ''A command that to read novel on terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."termnovel-master".dir   = "master";
  inputs."termnovel-master".owner = "nim-nix-pkgs";
  inputs."termnovel-master".ref   = "master";
  inputs."termnovel-master".repo  = "termnovel";
  inputs."termnovel-master".type  = "github";
  inputs."termnovel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termnovel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termnovel-1_0_0".dir   = "1_0_0";
  inputs."termnovel-1_0_0".owner = "nim-nix-pkgs";
  inputs."termnovel-1_0_0".ref   = "master";
  inputs."termnovel-1_0_0".repo  = "termnovel";
  inputs."termnovel-1_0_0".type  = "github";
  inputs."termnovel-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termnovel-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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