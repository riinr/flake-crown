{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimaes-master".type = "github";
  inputs."nimaes-master".owner = "riinr";
  inputs."nimaes-master".repo = "flake-nimble";
  inputs."nimaes-master".ref = "flake-pinning";
  inputs."nimaes-master".dir = "nimpkgs/n/nimaes/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}