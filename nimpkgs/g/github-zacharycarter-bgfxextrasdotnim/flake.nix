{
  description = ''Extra wrappers for bgfx'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bgfxextrasdotnim-master".dir   = "master";
  inputs."bgfxextrasdotnim-master".owner = "nim-nix-pkgs";
  inputs."bgfxextrasdotnim-master".ref   = "master";
  inputs."bgfxextrasdotnim-master".repo  = "bgfxextrasdotnim";
  inputs."bgfxextrasdotnim-master".type  = "github";
  inputs."bgfxextrasdotnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bgfxextrasdotnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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