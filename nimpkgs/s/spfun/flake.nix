{
  description = ''Special Functions of Stats & Physics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spfun-main".url = "path:./main";
  inputs."spfun-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spfun-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spfun-0_2_0".url = "path:./0_2_0";
  inputs."spfun-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spfun-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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