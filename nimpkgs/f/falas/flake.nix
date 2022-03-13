{
  description = ''fragment-aware assembler for short reads'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."falas-master".dir   = "master";
  inputs."falas-master".owner = "nim-nix-pkgs";
  inputs."falas-master".ref   = "master";
  inputs."falas-master".repo  = "falas";
  inputs."falas-master".type  = "github";
  inputs."falas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."falas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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