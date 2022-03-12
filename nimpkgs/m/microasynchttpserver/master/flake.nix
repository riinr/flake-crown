{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-microasynchttpserver-master.flake = false;
  inputs.src-microasynchttpserver-master.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-master.ref   = "refs/heads/master";
  inputs.src-microasynchttpserver-master.repo  = "microasynchttpserver";
  inputs.src-microasynchttpserver-master.type  = "github";
  
  inputs."picohttpparser".dir   = "nimpkgs/p/picohttpparser";
  inputs."picohttpparser".owner = "riinr";
  inputs."picohttpparser".ref   = "flake-pinning";
  inputs."picohttpparser".repo  = "flake-nimble";
  inputs."picohttpparser".type  = "github";
  inputs."picohttpparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-microasynchttpserver-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-microasynchttpserver-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}