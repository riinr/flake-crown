{
  description = ''Nim's Windows GUI Framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."wnim-master".type = "github";
  inputs."wnim-master".owner = "riinr";
  inputs."wnim-master".repo = "flake-nimble";
  inputs."wnim-master".ref = "flake-pinning";
  inputs."wnim-master".dir = "nimpkgs/w/wnim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}