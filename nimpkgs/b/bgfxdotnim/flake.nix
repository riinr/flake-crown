{
  description = ''bindings to bgfx c99 api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bgfxdotnim-master".dir   = "master";
  inputs."bgfxdotnim-master".owner = "nim-nix-pkgs";
  inputs."bgfxdotnim-master".ref   = "master";
  inputs."bgfxdotnim-master".repo  = "bgfxdotnim";
  inputs."bgfxdotnim-master".type  = "github";
  inputs."bgfxdotnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bgfxdotnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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