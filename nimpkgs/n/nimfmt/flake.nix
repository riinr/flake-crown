{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfmt-master".url = "path:./master";
  inputs."nimfmt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfmt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfmt-0_2_0".url = "path:./0_2_0";
  inputs."nimfmt-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfmt-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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