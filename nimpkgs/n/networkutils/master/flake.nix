{
  description = ''Various networking utils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-networkutils-master.flake = false;
  inputs.src-networkutils-master.owner = "Q-Master";
  inputs.src-networkutils-master.ref   = "master";
  inputs.src-networkutils-master.repo  = "networkutils.nim";
  inputs.src-networkutils-master.type  = "github";
  
  inputs."ptr_math".owner = "nim-nix-pkgs";
  inputs."ptr_math".ref   = "master";
  inputs."ptr_math".repo  = "ptr_math";
  inputs."ptr_math".dir   = "v0_3_0";
  inputs."ptr_math".type  = "github";
  inputs."ptr_math".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-networkutils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-networkutils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}