{
  description = ''Dynamic-link libraries (DLLs) Development Kit for mIRC.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mdlldk-main".dir   = "main";
  inputs."mdlldk-main".owner = "nim-nix-pkgs";
  inputs."mdlldk-main".ref   = "master";
  inputs."mdlldk-main".repo  = "mdlldk";
  inputs."mdlldk-main".type  = "github";
  inputs."mdlldk-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mdlldk-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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