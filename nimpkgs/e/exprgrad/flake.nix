{
  description = ''An experimental deep learning framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."exprgrad-main".url = "path:./main";
  inputs."exprgrad-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."exprgrad-v0_0_1".url = "path:./v0_0_1";
  inputs."exprgrad-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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