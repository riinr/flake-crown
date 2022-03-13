{
  description = ''FastCGI library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fastcgi-master".dir   = "master";
  inputs."fastcgi-master".owner = "nim-nix-pkgs";
  inputs."fastcgi-master".ref   = "master";
  inputs."fastcgi-master".repo  = "fastcgi";
  inputs."fastcgi-master".type  = "github";
  inputs."fastcgi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastcgi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fastcgi-0_1_0".dir   = "0_1_0";
  inputs."fastcgi-0_1_0".owner = "nim-nix-pkgs";
  inputs."fastcgi-0_1_0".ref   = "master";
  inputs."fastcgi-0_1_0".repo  = "fastcgi";
  inputs."fastcgi-0_1_0".type  = "github";
  inputs."fastcgi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastcgi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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