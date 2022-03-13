{
  description = ''<VS Code Data Swapper> Easily swap between multiple data folders.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vscds-master".dir   = "master";
  inputs."vscds-master".owner = "nim-nix-pkgs";
  inputs."vscds-master".ref   = "master";
  inputs."vscds-master".repo  = "vscds";
  inputs."vscds-master".type  = "github";
  inputs."vscds-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vscds-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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