{
  description = ''Socks5 client and server library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."socks5-master".dir   = "master";
  inputs."socks5-master".owner = "nim-nix-pkgs";
  inputs."socks5-master".ref   = "master";
  inputs."socks5-master".repo  = "socks5";
  inputs."socks5-master".type  = "github";
  inputs."socks5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."socks5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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