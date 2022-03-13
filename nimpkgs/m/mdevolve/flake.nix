{
  description = ''Integrator framework for Molecular Dynamic evolutions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mdevolve-master".dir   = "master";
  inputs."mdevolve-master".owner = "nim-nix-pkgs";
  inputs."mdevolve-master".ref   = "master";
  inputs."mdevolve-master".repo  = "mdevolve";
  inputs."mdevolve-master".type  = "github";
  inputs."mdevolve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mdevolve-v0_1_1".dir   = "v0_1_1";
  inputs."mdevolve-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mdevolve-v0_1_1".ref   = "master";
  inputs."mdevolve-v0_1_1".repo  = "mdevolve";
  inputs."mdevolve-v0_1_1".type  = "github";
  inputs."mdevolve-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mdevolve-v1_0_0".dir   = "v1_0_0";
  inputs."mdevolve-v1_0_0".owner = "nim-nix-pkgs";
  inputs."mdevolve-v1_0_0".ref   = "master";
  inputs."mdevolve-v1_0_0".repo  = "mdevolve";
  inputs."mdevolve-v1_0_0".type  = "github";
  inputs."mdevolve-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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