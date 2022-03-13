{
  description = ''bindings to cimgui - https://github.com/cimgui/cimgui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgui-master".dir   = "master";
  inputs."nimgui-master".owner = "nim-nix-pkgs";
  inputs."nimgui-master".ref   = "master";
  inputs."nimgui-master".repo  = "nimgui";
  inputs."nimgui-master".type  = "github";
  inputs."nimgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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