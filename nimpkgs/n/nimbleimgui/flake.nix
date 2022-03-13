{
  description = ''ImGui Frontend for Nimble'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbleimgui-master".dir   = "master";
  inputs."nimbleimgui-master".owner = "nim-nix-pkgs";
  inputs."nimbleimgui-master".ref   = "master";
  inputs."nimbleimgui-master".repo  = "nimbleimgui";
  inputs."nimbleimgui-master".type  = "github";
  inputs."nimbleimgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbleimgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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