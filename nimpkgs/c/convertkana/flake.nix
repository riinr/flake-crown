{
  description = ''Convert Japanese Kana'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."convertkana-devel".dir   = "devel";
  inputs."convertkana-devel".owner = "nim-nix-pkgs";
  inputs."convertkana-devel".ref   = "master";
  inputs."convertkana-devel".repo  = "convertkana";
  inputs."convertkana-devel".type  = "github";
  inputs."convertkana-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."convertkana-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."convertkana-master".dir   = "master";
  inputs."convertkana-master".owner = "nim-nix-pkgs";
  inputs."convertkana-master".ref   = "master";
  inputs."convertkana-master".repo  = "convertkana";
  inputs."convertkana-master".type  = "github";
  inputs."convertkana-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."convertkana-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."convertkana-v0_1_0".dir   = "v0_1_0";
  inputs."convertkana-v0_1_0".owner = "nim-nix-pkgs";
  inputs."convertkana-v0_1_0".ref   = "master";
  inputs."convertkana-v0_1_0".repo  = "convertkana";
  inputs."convertkana-v0_1_0".type  = "github";
  inputs."convertkana-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."convertkana-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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