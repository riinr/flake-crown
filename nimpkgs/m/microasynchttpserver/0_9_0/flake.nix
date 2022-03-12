{
  description = ''A thin asynchronous HTTP server library, API compatible with Nim's built-in asynchttpserver.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-microasynchttpserver-0_9_0.flake = false;
  inputs.src-microasynchttpserver-0_9_0.owner = "philip-wernersbach";
  inputs.src-microasynchttpserver-0_9_0.ref   = "refs/tags/0.9.0";
  inputs.src-microasynchttpserver-0_9_0.repo  = "microasynchttpserver";
  inputs.src-microasynchttpserver-0_9_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-microasynchttpserver-0_9_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-microasynchttpserver-0_9_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}