{
  description = ''A brainfuck interpreter & compiler implemented in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfcuk-main".url = "path:./main";
  inputs."nimfcuk-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfcuk-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfcuk-0_1_1".url = "path:./0_1_1";
  inputs."nimfcuk-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfcuk-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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