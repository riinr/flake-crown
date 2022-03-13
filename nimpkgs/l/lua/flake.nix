{
  description = ''Wrapper to interface with the Lua interpreter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lua-master".dir   = "master";
  inputs."lua-master".owner = "nim-nix-pkgs";
  inputs."lua-master".ref   = "master";
  inputs."lua-master".repo  = "lua";
  inputs."lua-master".type  = "github";
  inputs."lua-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lua-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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