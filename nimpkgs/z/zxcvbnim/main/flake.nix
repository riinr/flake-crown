{
  description = ''A zxcvbn clone for Nim. Written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zxcvbnim-main.flake = false;
  inputs.src-zxcvbnim-main.owner = "jiiihpeeh";
  inputs.src-zxcvbnim-main.ref   = "refs/heads/main";
  inputs.src-zxcvbnim-main.repo  = "zxcvbnim";
  inputs.src-zxcvbnim-main.type  = "github";
  
  inputs."jsony".dir   = "nimpkgs/j/jsony";
  inputs."jsony".owner = "riinr";
  inputs."jsony".ref   = "flake-pinning";
  inputs."jsony".repo  = "flake-nimble";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy".dir   = "nimpkgs/s/supersnappy";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".ref   = "flake-pinning";
  inputs."supersnappy".repo  = "flake-nimble";
  inputs."supersnappy".type  = "github";
  inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zxcvbnim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zxcvbnim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}