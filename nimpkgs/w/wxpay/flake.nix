{
  description = ''A wechat payment sdk for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wxpay-main".dir   = "main";
  inputs."wxpay-main".owner = "nim-nix-pkgs";
  inputs."wxpay-main".ref   = "master";
  inputs."wxpay-main".repo  = "wxpay";
  inputs."wxpay-main".type  = "github";
  inputs."wxpay-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wxpay-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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