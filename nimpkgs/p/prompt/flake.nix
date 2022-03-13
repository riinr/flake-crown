{
  description = ''Feature-rich readline replacement'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."prompt-master".dir   = "master";
  inputs."prompt-master".owner = "nim-nix-pkgs";
  inputs."prompt-master".ref   = "master";
  inputs."prompt-master".repo  = "prompt";
  inputs."prompt-master".type  = "github";
  inputs."prompt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prompt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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