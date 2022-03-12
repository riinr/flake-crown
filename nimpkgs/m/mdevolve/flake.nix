{
  description = ''Integrator framework for Molecular Dynamic evolutions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mdevolve-master".url = "path:./master";
  inputs."mdevolve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mdevolve-v0_1_1".url = "path:./v0_1_1";
  inputs."mdevolve-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mdevolve-v1_0_0".url = "path:./v1_0_0";
  inputs."mdevolve-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdevolve-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}