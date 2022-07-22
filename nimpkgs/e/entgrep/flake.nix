{
  description = ''A grep but for secrets (based on entropy).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."entgrep-master".dir   = "master";
  inputs."entgrep-master".owner = "nim-nix-pkgs";
  inputs."entgrep-master".ref   = "master";
  inputs."entgrep-master".repo  = "entgrep";
  inputs."entgrep-master".type  = "github";
  inputs."entgrep-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."entgrep-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."entgrep-v0_2_0".dir   = "v0_2_0";
  inputs."entgrep-v0_2_0".owner = "nim-nix-pkgs";
  inputs."entgrep-v0_2_0".ref   = "master";
  inputs."entgrep-v0_2_0".repo  = "entgrep";
  inputs."entgrep-v0_2_0".type  = "github";
  inputs."entgrep-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."entgrep-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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