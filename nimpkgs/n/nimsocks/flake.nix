{
  description = ''A filtering SOCKS proxy server and client library written in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsocks-master".dir   = "master";
  inputs."nimsocks-master".owner = "nim-nix-pkgs";
  inputs."nimsocks-master".ref   = "master";
  inputs."nimsocks-master".repo  = "nimsocks";
  inputs."nimsocks-master".type  = "github";
  inputs."nimsocks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsocks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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