{
  description = ''Sample Todo List Application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sampletodolist-master".dir   = "master";
  inputs."sampletodolist-master".owner = "nim-nix-pkgs";
  inputs."sampletodolist-master".ref   = "master";
  inputs."sampletodolist-master".repo  = "sampletodolist";
  inputs."sampletodolist-master".type  = "github";
  inputs."sampletodolist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sampletodolist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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