{
  description = ''Handler framework for the Mongrel2 web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mongrel2-master.flake = false;
  inputs.src-mongrel2-master.owner = "mahlonsmith";
  inputs.src-mongrel2-master.ref   = "refs/heads/master";
  inputs.src-mongrel2-master.repo  = "nim-mongrel2";
  inputs.src-mongrel2-master.type  = "github";
  
  inputs."tnetstring".dir   = "nimpkgs/t/tnetstring";
  inputs."tnetstring".owner = "riinr";
  inputs."tnetstring".ref   = "flake-pinning";
  inputs."tnetstring".repo  = "flake-nimble";
  inputs."tnetstring".type  = "github";
  inputs."tnetstring".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tnetstring".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq".dir   = "nimpkgs/z/zmq";
  inputs."zmq".owner = "riinr";
  inputs."zmq".ref   = "flake-pinning";
  inputs."zmq".repo  = "flake-nimble";
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