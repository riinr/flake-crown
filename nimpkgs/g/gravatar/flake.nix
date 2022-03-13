{
  description = ''Gravatar API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gravatar-master".dir   = "master";
  inputs."gravatar-master".owner = "nim-nix-pkgs";
  inputs."gravatar-master".ref   = "master";
  inputs."gravatar-master".repo  = "gravatar";
  inputs."gravatar-master".type  = "github";
  inputs."gravatar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gravatar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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