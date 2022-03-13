{
  description = ''APIs available in the latests version of Nim, backported to older stable releases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."std_shims-master".dir   = "master";
  inputs."std_shims-master".owner = "nim-nix-pkgs";
  inputs."std_shims-master".ref   = "master";
  inputs."std_shims-master".repo  = "std_shims";
  inputs."std_shims-master".type  = "github";
  inputs."std_shims-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."std_shims-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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