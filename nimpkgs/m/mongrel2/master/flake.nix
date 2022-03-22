{
  description = ''Simplistic handler framework for the Mongrel2 webserver.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mongrel2-master.flake = false;
  inputs.src-mongrel2-master.ref   = "refs/heads/master";
  inputs.src-mongrel2-master.owner = "mahlonsmith";
  inputs.src-mongrel2-master.repo  = "nim-mongrel2";
  inputs.src-mongrel2-master.type  = "github";
  
  inputs."tnetstring".owner = "nim-nix-pkgs";
  inputs."tnetstring".ref   = "master";
  inputs."tnetstring".repo  = "tnetstring";
  inputs."tnetstring".dir   = "";
  inputs."tnetstring".type  = "github";
  inputs."tnetstring".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnetstring".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq".owner = "nim-nix-pkgs";
  inputs."zmq".ref   = "master";
  inputs."zmq".repo  = "zmq";
  inputs."zmq".dir   = "v1_3_0";
  inputs."zmq".type  = "github";
  inputs."zmq".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mongrel2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mongrel2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}