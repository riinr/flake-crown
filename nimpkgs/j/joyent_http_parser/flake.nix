{
  description = ''Wrapper for high performance HTTP parsing library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."joyent_http_parser-master".dir   = "master";
  inputs."joyent_http_parser-master".owner = "nim-nix-pkgs";
  inputs."joyent_http_parser-master".ref   = "master";
  inputs."joyent_http_parser-master".repo  = "joyent_http_parser";
  inputs."joyent_http_parser-master".type  = "github";
  inputs."joyent_http_parser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."joyent_http_parser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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