{
  description = ''SimpleHTTPServer module based on net sockets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimplehttpserver-master".dir   = "master";
  inputs."nimplehttpserver-master".owner = "nim-nix-pkgs";
  inputs."nimplehttpserver-master".ref   = "master";
  inputs."nimplehttpserver-master".repo  = "nimplehttpserver";
  inputs."nimplehttpserver-master".type  = "github";
  inputs."nimplehttpserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimplehttpserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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