{
  description = ''threadsafe timerpool implementation for event purpose'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timerpool-master".dir   = "master";
  inputs."timerpool-master".owner = "nim-nix-pkgs";
  inputs."timerpool-master".ref   = "master";
  inputs."timerpool-master".repo  = "timerpool";
  inputs."timerpool-master".type  = "github";
  inputs."timerpool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerpool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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